module AthenaHealth
  class Appointment < BaseModel
    attribute :appointmentconfirmationname, String
    attribute :appointmentid,               Integer
    attribute :appointmentstatus,           String
    attribute :appointmenttype,             String
    attribute :appointmenttypeid,           Integer
    attribute :reasonid,                    Array
    attribute :cancelleddatetime,           String
    attribute :cancelreasonname,            String
    attribute :cancelreasonnoshow,          Boolean
    attribute :coordinatorenterprise,       Boolean
    attribute :date,                        String
    attribute :departmentid,                Integer
    attribute :duration,                    Integer
    attribute :encounterstatus,             String
    attribute :frozen,                      Boolean
    attribute :lastmodified,                String
    attribute :patient,                     Patient
    attribute :patientappointmenttypename,  String
    attribute :patientid,                   Integer
    attribute :providerid,                  Integer
    attribute :renderingproviderid,         Integer
    attribute :patientlocationid,           Integer
    attribute :rescheduledappointmentid,    Integer
    attribute :scheduledby,                 String
    attribute :scheduleddatetime,           String
    attribute :starttime,                   String
    attribute :templateappointmentid,       Integer
    attribute :urgent,                      Boolean
    attribute :startcheckin,                String

    def appointment_status
        {
          'f' => 'Future',
          'x' => 'Cancelled',
          'o' => 'Open',
          '2' => 'Checked in',
          '3' => 'Checked out',
          '4' => 'Charge entered'
        }[appointmentstatus]
    end

    def full_time
      "#{date} #{starttime}"
    end
  end
end
