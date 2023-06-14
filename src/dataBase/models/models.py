from __future__ import annotations
from sqlalchemy import (
    Column, 
    Integer, 
    String, 
    ForeignKey, 
    Boolean, 
    DateTime,
    Float,
    select
)
from datetime import datetime
from sqlalchemy.orm import mapped_column
from typing import List
from sqlalchemy.orm import Mapped, mapped_column, relationship
from .databaseClient import Base
from .views import view



class ScrapperInfo(Base):
    __tablename__ = 'scrapper_info'
    id = Column(Integer, primary_key=True, autoincrement=True)
    last_page = Column(Integer)
    last_scrapper_date = Column(DateTime, default=datetime.now)

class Categories(Base):
    __tablename__ = 'categories'

    id = Column(Integer, primary_key=True)
    
    bodystyles: Mapped[List["Bodystyles"]] = relationship(back_populates="category")
    marks: Mapped[List["Marks"]] = relationship(back_populates="category")
    models: Mapped[List["Models"]] = relationship(back_populates="category")
    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="category")
    gearboxes: Mapped[List["Gearboxes"]] = relationship(back_populates="category")

    name = Column(String)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'categories model(id: {self.id}; name: {self.name}; value: {self.id})'

class States(Base):
    __tablename__ = 'states'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    
    cities: Mapped[List["Cities"]] = relationship(back_populates='state')
    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="state")


    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'states model(id: {self.id}; name: {self.name}; value: {self.id})'

class Cities(Base):
    __tablename__ = 'cities'

    id = Column(Integer, primary_key=True)
    name = Column(String)

    state_id: Mapped[int] = mapped_column(ForeignKey('states.id'))
    state: Mapped["States"] = relationship(back_populates="cities")

    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="city")

    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'cities model(id: {self.id}; name: {self.name}; value: {self.id})'

class Bodystyles(Base):
    __tablename__ = 'bodystyles'

    id = Column(Integer, primary_key=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="bodystyles")


    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="bodystyle")

    name = Column(String)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'bodystyles model(id: {self.id}; name: {self.name}; value: {self.id})'

class Marks(Base):
    __tablename__ = 'marks'

    id = Column(Integer, primary_key=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="marks")


    models: Mapped[List["Models"]] = relationship(back_populates="mark")

    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="mark")
    

    name = Column(String)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'marks model(id: {self.id}; name: {self.name}; value: {self.id})'

class Models(Base):
    __tablename__ = 'models'

    id = Column(Integer, primary_key=True)
    name = Column(String)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="models")


    mark_id: Mapped[int] = mapped_column(ForeignKey("marks.id"))
    mark: Mapped["Marks"] = relationship(back_populates="models")

    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="model")
    

    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)


    def __repr__(self):
        return f'models model(id: {self.id}; name: {self.name})'

class FuelTypes(Base):
    __tablename__ = 'fuel_types'

    id = Column(Integer, primary_key=True)
    name = Column(String)

    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="fuel_type")
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'fuel_types model(id: {self.id}; name: {self.name}; value: {self.id})'

class Gearboxes(Base):
    __tablename__ = 'gearboxes'

    id = Column(Integer, primary_key=True)
    name = Column(String)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="gearboxes")

    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="gearbox")

    
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'gearboxes model(id: {self.id}; name: {self.name}; value: {self.id})'

class Countries(Base):
    __tablename__ = 'countries'

    id = Column(Integer, primary_key=True)
    name = Column(String)

    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'countries model(id: {self.id}; name: {self.name}; value: {self.id})'

class AutoData(Base):
    __tablename__ = 'auto_data'
    
    auto_id = Column(Integer, primary_key=True)

    body_id: Mapped[int] = mapped_column(ForeignKey("bodystyles.id"))
    bodystyle: Mapped["Bodystyles"] = relationship(back_populates="auto_data")


    mark_id: Mapped[int] = mapped_column(ForeignKey("marks.id"))
    mark: Mapped["Marks"] = relationship(back_populates="auto_data")


    model_id: Mapped[int] = mapped_column(ForeignKey("models.id"))
    model: Mapped["Models"] = relationship(back_populates="auto_data")


    USD = Column(Integer)
    UAH = Column(Integer)
    EUR = Column(Integer)
    year = Column(Integer)
    status_id = Column(Integer)
    race = Column(String)
    race_int = Column(Integer)

    fuel_id: Mapped[int] = mapped_column(ForeignKey("fuel_types.id"))
    fuel_type: Mapped["FuelTypes"] = relationship(back_populates="auto_data")

    fuel_int = Column(Float)
    # fuel_name_eng = Column(String)

    gearbox_id: Mapped[int] = mapped_column(ForeignKey("gearboxes.id"))
    gearbox: Mapped["Gearboxes"] = relationship(back_populates="auto_data")

    drive_id = Column(Integer)
    drive_name = Column(String)


    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="auto_data")

    # category_name_eng = Column(String)

    damage = Column(Boolean)
    href = Column(String)
    VIN = Column(String)

    state_id: Mapped[int] = mapped_column(ForeignKey("states.id"))
    state: Mapped["States"] = relationship(back_populates="auto_data")


    city_id: Mapped[int] = mapped_column(ForeignKey("cities.id"))
    city: Mapped["Cities"] = relationship(back_populates="auto_data")

    created_at = Column(DateTime, default=datetime.now)
    updated_at = Column(DateTime, default=datetime.now, onupdate=datetime.now) 


def get_main_market_data_view(metadata):
    q = select(
            AutoData.auto_id,
            AutoData.year,
            Marks.name.label('mark_name'),
            AutoData.mark_id,
            Models.name.label('model_name'),
            AutoData.model_id,
            AutoData.USD.label('price'),
            Bodystyles.name.label('bodystyle'),
            AutoData.body_id.label('body_id')
        )
    q = q.outerjoin(Models, Models.id == AutoData.model_id)
    q = q.outerjoin(Marks, Marks.id == AutoData.mark_id)
    q = q.outerjoin(Bodystyles, Bodystyles.id == AutoData.body_id)
    q = q.group_by(AutoData.auto_id, Marks.name, Models.name, Bodystyles.name)
    main_market_data_view = view(
        "main_market_data_view",
        metadata,
        q
        
    )
    return main_market_data_view

class MainMarketDataView(Base):
        __table__ = get_main_market_data_view(Base.metadata)

        def __repr__(self):
            return f"MainMarketDataView({self.auto_id} {self.mark_name} {self.model_name})"