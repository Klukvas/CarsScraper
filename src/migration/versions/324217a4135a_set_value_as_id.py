"""set value as id

Revision ID: 324217a4135a
Revises: d4ff438d7f38
Create Date: 2023-06-04 23:18:49.970446

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '324217a4135a'
down_revision = 'd4ff438d7f38'
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint('bodystyles_value_key', 'bodystyles', type_='unique')
    op.drop_column('bodystyles', 'value')
    op.drop_constraint('categories_value_key', 'categories', type_='unique')
    op.drop_column('categories', 'value')
    op.drop_constraint('cities_value_key', 'cities', type_='unique')
    op.drop_column('cities', 'value')
    op.drop_constraint('countries_value_key', 'countries', type_='unique')
    op.drop_column('countries', 'value')
    op.drop_constraint('fuel_types_value_key', 'fuel_types', type_='unique')
    op.drop_column('fuel_types', 'value')
    op.drop_constraint('gearboxes_value_key', 'gearboxes', type_='unique')
    op.drop_column('gearboxes', 'value')
    op.drop_constraint('marks_value_key', 'marks', type_='unique')
    op.drop_column('marks', 'value')
    op.drop_constraint('models_value_key', 'models', type_='unique')
    op.drop_column('models', 'value')
    op.drop_constraint('states_value_key', 'states', type_='unique')
    op.drop_column('states', 'value')
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('states', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('states_value_key', 'states', ['value'])
    op.add_column('models', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('models_value_key', 'models', ['value'])
    op.add_column('marks', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('marks_value_key', 'marks', ['value'])
    op.add_column('gearboxes', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('gearboxes_value_key', 'gearboxes', ['value'])
    op.add_column('fuel_types', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('fuel_types_value_key', 'fuel_types', ['value'])
    op.add_column('countries', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('countries_value_key', 'countries', ['value'])
    op.add_column('cities', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('cities_value_key', 'cities', ['value'])
    op.add_column('categories', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('categories_value_key', 'categories', ['value'])
    op.add_column('bodystyles', sa.Column('value', sa.INTEGER(), autoincrement=False, nullable=True))
    op.create_unique_constraint('bodystyles_value_key', 'bodystyles', ['value'])
    # ### end Alembic commands ###
