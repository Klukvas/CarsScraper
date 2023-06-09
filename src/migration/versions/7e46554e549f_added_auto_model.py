"""added auto model

Revision ID: 7e46554e549f
Revises: 9f6165720c7a
Create Date: 2023-06-02 13:56:37.181419

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '7e46554e549f'
down_revision = '9f6165720c7a'
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('auto_data',
    sa.Column('auto_id', sa.Integer(), nullable=False),
    sa.Column('body_id', sa.Integer(), nullable=False),
    sa.Column('mark_id', sa.Integer(), nullable=False),
    sa.Column('model_id', sa.Integer(), nullable=False),
    sa.Column('USD', sa.Integer(), nullable=True),
    sa.Column('UAH', sa.Integer(), nullable=True),
    sa.Column('EUR', sa.Integer(), nullable=True),
    sa.Column('year', sa.Integer(), nullable=True),
    sa.Column('status_id', sa.Integer(), nullable=True),
    sa.Column('race', sa.String(), nullable=True),
    sa.Column('race_int', sa.Integer(), nullable=True),
    sa.Column('fuel_id', sa.Integer(), nullable=False),
    sa.Column('fuel_int', sa.Integer(), nullable=True),
    sa.Column('gearbox_id', sa.Integer(), nullable=False),
    sa.Column('drive_id', sa.Integer(), nullable=True),
    sa.Column('drive_name', sa.String(), nullable=True),
    sa.Column('category_id', sa.Integer(), nullable=False),
    sa.Column('damage', sa.Boolean(), nullable=True),
    sa.Column('href', sa.String(), nullable=True),
    sa.Column('VIN', sa.String(), nullable=True),
    sa.Column('state_id', sa.Integer(), nullable=False),
    sa.Column('city_id', sa.Integer(), nullable=False),
    sa.Column('created_at', sa.DateTime(), nullable=True),
    sa.Column('updated_at', sa.DateTime(), nullable=True),
    sa.ForeignKeyConstraint(['body_id'], ['bodystyles.id'], ),
    sa.ForeignKeyConstraint(['category_id'], ['categories.id'], ),
    sa.ForeignKeyConstraint(['city_id'], ['cities.id'], ),
    sa.ForeignKeyConstraint(['fuel_id'], ['fuel_types.id'], ),
    sa.ForeignKeyConstraint(['gearbox_id'], ['gearboxes.id'], ),
    sa.ForeignKeyConstraint(['mark_id'], ['marks.id'], ),
    sa.ForeignKeyConstraint(['model_id'], ['models.id'], ),
    sa.ForeignKeyConstraint(['state_id'], ['states.id'], ),
    sa.PrimaryKeyConstraint('auto_id')
    )
    op.add_column('cities', sa.Column('state_id', sa.Integer(), nullable=False))
    op.create_foreign_key(None, 'cities', 'states', ['state_id'], ['id'])
    op.add_column('gearboxes', sa.Column('category_id', sa.Integer(), nullable=False))
    op.create_foreign_key(None, 'gearboxes', 'categories', ['category_id'], ['id'])
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'gearboxes', type_='foreignkey')
    op.drop_column('gearboxes', 'category_id')
    op.drop_constraint(None, 'cities', type_='foreignkey')
    op.drop_column('cities', 'state_id')
    op.drop_table('auto_data')
    # ### end Alembic commands ###
