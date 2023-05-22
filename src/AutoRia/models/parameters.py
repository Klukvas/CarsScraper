from sqlalchemy import Column, Integer, String
from src.autoRia.models.databaseClient import Base


class States(Base):
    __tablename__ = 'states'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Cities(Base):
    __tablename__ = 'cities'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Categories(Base):
    __tablename__ = 'categories'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Bodystyles(Base):
    __tablename__ = 'bodystyles'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Marks(Base):
    __tablename__ = 'marks'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Models(Base):
    __tablename__ = 'models'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class FuelTypes(Base):
    __tablename__ = 'fuel_types'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Gearboxes(Base):
    __tablename__ = 'gearboxes'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)

class Countries(Base):
    __tablename__ = 'countries'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String)
    value = Column(Integer, unique=True)