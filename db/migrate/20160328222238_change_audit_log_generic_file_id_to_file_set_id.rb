class ChangeAuditLogGenericFileIdToFileSetId < ActiveRecord::Migration
  def change
    rename_column :checksum_audit_logs, :generic_file_id, :file_set_id unless ChecksumAuditLog.column_names.include?('file_set_id')
  end
end