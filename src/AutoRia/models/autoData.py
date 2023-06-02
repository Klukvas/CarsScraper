from sqlalchemy import Column, Integer, String, Boolean
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
import json

Base = declarative_base()



class AutoData(Base):
    __tablename__ = 'auto_data'
    
    id = Column(Integer, primary_key=True)
    year = Column(Integer)
    auto_id = Column(Integer)
    body_id = Column(Integer)
    status_id = Column(Integer)
    race = Column(String)
    race_int = Column(Integer)
    fuel_id = Column(Integer)
    fuel_name = Column(String)
    fuel_name_eng = Column(String)
    gearbox_id = Column(Integer)
    gearbox_name = Column(String)
    drive_id = Column(Integer)
    drive_name = Column(String)
    category_id = Column(Integer)
    category_name_eng = Column(String)
    sub_category_name_eng = Column(String)
    custom = Column(Integer)
    realty_exchange = Column(Boolean, default=False)


class AutoInfoBar(Base):
    __tablename__ = 'auto_info_bar'
    
    id = Column(Integer, primary_key=True)
    custom = Column(Boolean, default=False)
    abroad = Column(Boolean, default=False)
    on_repair_parts = Column(Boolean, default=False)
    damage = Column(Boolean, default=False)
    under_credit = Column(Boolean, default=False)
    confiscated_car = Column(Boolean, default=False)


class PhotoData(Base):
    __tablename__ = 'photo_data'
    
    id = Column(Integer, primary_key=True)
    all = Column(String)
    count = Column(Integer)
    seo_link_m = Column(String)
    seo_link_sx = Column(String)
    seo_link_b = Column(String)
    seo_link_f = Column(String)


class StateData(Base):
    __tablename__ = 'state_data'
    
    id = Column(Integer, primary_key=True)
    name = Column(String)
    region_name = Column(String)
    region_name_eng = Column(String)
    link_to_catalog = Column(String)
    title = Column(String)
    state_id = Column(Integer)
    city_id = Column(Integer)


class CheckedVin(Base):
    __tablename__ = 'checked_vin'
    
    id = Column(Integer, primary_key=True)
    order_id = Column(Integer)
    vin = Column(String)
    is_show = Column(Boolean, default=True)


class Auto(Base):
    __tablename__ = 'auto'
    
    id = Column(Integer, primary_key=True)
    location_city_name = Column(String)
    usd = Column(Integer)
    uah = Column(Integer)
    eur = Column(Integer)
    mark_name = Column(String)
    mark_name_eng = Column(String)
    mark_id = Column(Integer)
    model_name = Column(String)
    model_name_eng = Column(String)
    model_id = Column(Integer)
    sub_category_name = Column(String)
    link_to_view = Column(String)
    title = Column(String)
    vin = Column(String)
    has_webp = Column(Integer)
    secure_key = Column(String)
    agree_show_vin = Column(Integer)
    
    color_id = Column(Integer, ForeignKey('color.id'))
    color = relationship('Color')
    
    auto_data_id = Column(Integer, ForeignKey('auto_data.id'))
    auto_data = relationship('AutoData')
    
    auto_info_bar_id = Column(Integer, ForeignKey('auto_info_bar.id'))
    auto_info_bar = relationship('AutoInfoBar')
    
    photo_data_id = Column(Integer, ForeignKey('photo_data.id'))
    photo_data = relationship('PhotoData')
    
    state_data_id = Column(Integer, ForeignKey('state_data.id'))
    state_data = relationship('StateData')
    
    checked_vin_id = Column(Integer, ForeignKey('checked_vin.id'))
    checked_vin = relationship('CheckedVin')
    