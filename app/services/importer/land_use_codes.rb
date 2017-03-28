class Importer::LandUseCodes < Importer

  def import!
    super
    data.each do |row|
      land_use_code = ::LandUseCode.find_or_initialize_by({object_id: row[:objectid]})
      land_use_code.assign_attributes({object_id: convert_int(row[:objectid]), value: convert_int(row[:val]), label: convert_string(row[:msg])})

      land_use_code.save! if land_use_code.changed? || land_use_code.new_record?
    end
  end
end