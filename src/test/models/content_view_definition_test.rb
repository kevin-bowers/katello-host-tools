#
# Copyright 2012 Red Hat, Inc.
#
# This software is licensed to you under the GNU General Public
# License as published by the Free Software Foundation; either version
# 2 of the License (GPLv2) or (at your option) any later version.
# There is NO WARRANTY for this software, express or implied,
# including the implied warranties of MERCHANTABILITY,
# NON-INFRINGEMENT, or FITNESS FOR A PARTICULAR PURPOSE. You should
# have received a copy of GPLv2 along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.

require 'minitest_helper'

class ContentViewDefinitionTest < MiniTest::Rails::ActiveSupport::TestCase

  def setup
    @content_view_def = FactoryGirl.build(:content_view_definition)
  end

  def teardown
    @content_view_def.destroy
  end

  def test_create
    assert @content_view_def.save
  end

  def test_bad_name
    content_view_def = FactoryGirl.build(:content_view_definition, :name => "")
    assert content_view_def.invalid?
    assert content_view_def.errors.has_key?(:name)
  end
end
