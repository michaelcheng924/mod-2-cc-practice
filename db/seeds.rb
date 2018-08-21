doctor1 = Doctor.create(name: 'Billy')
doctor2 = Doctor.create(name: 'Sally')
doctor3 = Doctor.create(name: 'Tommy')
doctor4 = Doctor.create(name: 'Suzy')

patient1 = Patient.create(name: 'Bobby')
patient2 = Patient.create(name: 'Jane')
patient3 = Patient.create(name: 'Jimmy')
patient4 = Patient.create(name: 'George')

appointment1 = Appointment.create(doctor_id: doctor1.id, patient_id: patient1.id, description: 'Physical exam')
appointment2 = Appointment.create(doctor_id: doctor2.id, patient_id: patient2.id, description: 'Common cold')
