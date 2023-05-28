"""added relation btween marks and categories

Revision ID: ddc25e0d9128
Revises: 076af84e72db
Create Date: 2023-05-28 00:24:07.320250

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'ddc25e0d9128'
down_revision = '076af84e72db'
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('marks', sa.Column('category_id', sa.Integer(), nullable=False))
    op.create_foreign_key(None, 'marks', 'categories', ['category_id'], ['id'])
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'marks', type_='foreignkey')
    op.drop_column('marks', 'category_id')
    # ### end Alembic commands ###