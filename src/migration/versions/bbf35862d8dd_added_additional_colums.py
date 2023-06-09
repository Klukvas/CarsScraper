"""added additional colums

Revision ID: bbf35862d8dd
Revises: 7e46554e549f
Create Date: 2023-06-02 14:03:18.757177

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'bbf35862d8dd'
down_revision = '7e46554e549f'
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('bodystyles', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('bodystyles', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('categories', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('categories', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('cities', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('cities', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('countries', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('countries', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('fuel_types', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('fuel_types', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('gearboxes', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('gearboxes', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('marks', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('marks', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('models', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('models', sa.Column('created_at', sa.DateTime(), nullable=True))
    op.add_column('states', sa.Column('added_by_sync', sa.Boolean(), nullable=True))
    op.add_column('states', sa.Column('created_at', sa.DateTime(), nullable=True))
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('states', 'created_at')
    op.drop_column('states', 'added_by_sync')
    op.drop_column('models', 'created_at')
    op.drop_column('models', 'added_by_sync')
    op.drop_column('marks', 'created_at')
    op.drop_column('marks', 'added_by_sync')
    op.drop_column('gearboxes', 'created_at')
    op.drop_column('gearboxes', 'added_by_sync')
    op.drop_column('fuel_types', 'created_at')
    op.drop_column('fuel_types', 'added_by_sync')
    op.drop_column('countries', 'created_at')
    op.drop_column('countries', 'added_by_sync')
    op.drop_column('cities', 'created_at')
    op.drop_column('cities', 'added_by_sync')
    op.drop_column('categories', 'created_at')
    op.drop_column('categories', 'added_by_sync')
    op.drop_column('bodystyles', 'created_at')
    op.drop_column('bodystyles', 'added_by_sync')
    # ### end Alembic commands ###
