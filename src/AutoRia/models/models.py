from __future__ import annotations
from sqlalchemy import Column, Integer, String, ForeignKey, Boolean, DateTime
from datetime import datetime
from sqlalchemy.orm import mapped_column
from typing import List
from sqlalchemy.orm import Mapped, mapped_column, relationship
from src.autoRia.models.databaseClient import Base


class Categories(Base):
    __tablename__ = 'categories'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    
    bodystyles: Mapped[List["Bodystyles"]] = relationship(back_populates="category")
    marks: Mapped[List["Marks"]] = relationship(back_populates="category")
    models: Mapped[List["Models"]] = relationship(back_populates="category")

    name = Column(String)
    value = Column(Integer, unique=True)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'categories model(id: {self.id}; name: {self.name}; value: {self.value})'

class States(Base):
    __tablename__ = 'states'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)
    cities: Mapped[List["Cities"]] = relationship(back_populates='cities')
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'states model(id: {self.id}; name: {self.name}; value: {self.value})'

class Cities(Base):
    __tablename__ = 'cities'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)
    state_id: Mapped[int] = mapped_column(ForeignKey('states.id'))
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'cities model(id: {self.id}; name: {self.name}; value: {self.value})'



class Bodystyles(Base):
    __tablename__ = 'bodystyles'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))

    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="auto_data")

    name = Column(String)
    value = Column(Integer, unique=True)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'bodystyles model(id: {self.id}; name: {self.name}; value: {self.value})'

class Marks(Base):
    __tablename__ = 'marks'

    id = Column(Integer, primary_key=True, autoincrement=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    models: Mapped[List["Models"]] = relationship(back_populates="marks")

    name = Column(String)
    value = Column(Integer, unique=True)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'marks model(id: {self.id}; name: {self.name}; value: {self.value})'

class Models(Base):
    __tablename__ = 'models'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))

    mark_id: Mapped[int] = mapped_column(ForeignKey("marks.id"))
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)


    def __repr__(self):
        return f'models model(id: {self.id}; name: {self.name}; value: {self.value})'

class FuelTypes(Base):
    __tablename__ = 'fuel_types'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)
    auto_data: Mapped[List["AutoData"]] = relationship(back_populates="auto_data")
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'fuel_types model(id: {self.id}; name: {self.name}; value: {self.value})'

class Gearboxes(Base):
    __tablename__ = 'gearboxes'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)
    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'gearboxes model(id: {self.id}; name: {self.name}; value: {self.value})'

class Countries(Base):
    __tablename__ = 'countries'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)
    added_by_sync = Column(Boolean, default=True)
    created_at = Column(DateTime, default=datetime.now)

    def __repr__(self):
        return f'countries model(id: {self.id}; name: {self.name}; value: {self.value})'

class AutoData(Base):
    __tablename__ = 'auto_data'
    
    auto_id = Column(Integer, primary_key=True)

    body_id: Mapped[int] = mapped_column(ForeignKey("bodystyles.id"))

    mark_id: Mapped[int] = mapped_column(ForeignKey("marks.id"))

    model_id: Mapped[int] = mapped_column(ForeignKey("models.id"))

    USD = Column(Integer)
    UAH = Column(Integer)
    EUR = Column(Integer)
    year = Column(Integer)
    status_id = Column(Integer)
    race = Column(String)
    race_int = Column(Integer)

    fuel_id: Mapped[int] = mapped_column(ForeignKey("fuel_types.id"))
    fuel_int = Column(Integer)
    # fuel_name_eng = Column(String)

    gearbox_id: Mapped[int] = mapped_column(ForeignKey("gearboxes.id"))

    drive_id = Column(Integer)
    drive_name = Column(String)


    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    # category_name_eng = Column(String)

    damage = Column(Boolean)
    href = Column(String)
    VIN = Column(String)

    state_id: Mapped[int] = mapped_column(ForeignKey("states.id"))

    city_id: Mapped[int] = mapped_column(ForeignKey("cities.id"))
    created_at = Column(DateTime, default=datetime.now)
    updated_at = Column(DateTime, default=datetime.now, onupdate=datetime.now) 