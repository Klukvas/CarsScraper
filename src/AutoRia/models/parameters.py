from __future__ import annotations
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import mapped_column
from typing import List
from sqlalchemy.orm import Mapped, mapped_column, relationship




from src.autoRia.models.databaseClient import Base


class States(Base):
    __tablename__ = 'states'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'states model(id: {self.id}; name: {self.name}; value: {self.value})'

class Cities(Base):
    __tablename__ = 'cities'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'cities model(id: {self.id}; name: {self.name}; value: {self.value})'

class Categories(Base):
    __tablename__ = 'categories'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    
    
    bodystyles: Mapped[List["Bodystyles"]] = relationship(back_populates="category")
    marks: Mapped[List["Marks"]] = relationship(back_populates="category")


    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'categories model(id: {self.id}; name: {self.name}; value: {self.value})'

class Bodystyles(Base):
    __tablename__ = 'bodystyles'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="bodystyles")

    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'bodystyles model(id: {self.id}; name: {self.name}; value: {self.value})'

class Marks(Base):
    __tablename__ = 'marks'

    id = Column(Integer, primary_key=True, autoincrement=True)

    category_id: Mapped[int] = mapped_column(ForeignKey("categories.id"))
    category: Mapped["Categories"] = relationship(back_populates="marks")

    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'marks model(id: {self.id}; name: {self.name}; value: {self.value})'

class Models(Base):
    __tablename__ = 'models'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'models model(id: {self.id}; name: {self.name}; value: {self.value})'

class FuelTypes(Base):
    __tablename__ = 'fuel_types'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'fuel_types model(id: {self.id}; name: {self.name}; value: {self.value})'

class Gearboxes(Base):
    __tablename__ = 'gearboxes'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'gearboxes model(id: {self.id}; name: {self.name}; value: {self.value})'

class Countries(Base):
    __tablename__ = 'countries'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

    def __repr__(self):
        return f'countries model(id: {self.id}; name: {self.name}; value: {self.value})'
