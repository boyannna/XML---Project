function createXMLDocument() {

    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);
    documentImplementation.createHTMLDocument();

    let veterinary_clinic = doc.createElement("veterinary_clinic");

    let staffs = doc.createElement("staffs");
    veterinary_clinic.appendChild(staffs);

    let staff = doc.createElement("staff");
    staff.setAttribute("id", "S001");
    staffs.appendChild(staff);

    let name_s = doc.createElement("name_s");
    staff.appendChild(name_s);
    let name_s_node = doc.createTextNode("Владимир");
    name_s.appendChild(name_s_node);

    let last_name_s = doc.createElement("last_name_s");
    staff.appendChild(last_name_s);
    let last_name_s_node = doc.createTextNode("Йорданов");
    last_name_s.appendChild(last_name_s_node);

    let phone_number_s = doc.createElement("phone_number_s");
    staff.appendChild(phone_number_s);
    let phone_number_s_node = doc.createTextNode("0881234567");
    phone_number_s.appendChild(phone_number_s_node);

    let position = doc.createElement("position");
    staff.appendChild(position);
    let position_node = doc.createTextNode("Ортопед");
    position.appendChild(position_node);

    let salary = doc.createElement("salary");
    staff.appendChild(salary);
    let salary_node = doc.createTextNode("5000");
    salary.appendChild(salary_node);

    let email_s = doc.createElement("email_s");
    staff.appendChild(email_s);
    let email_s_node = doc.createTextNode("v.yordanov@gmail.com");
    email_s.appendChild(email_s_node);

    ///////////////////////////////////////////////////////
    let manipulations = doc.createElement("manipulations");
    veterinary_clinic.appendChild(manipulations);

    let manipulation = doc.createElement("manipulation");
    manipulation.setAttribute("anesthesia", "with");
    manipulations.appendChild(manipulation);

    let name_m = doc.createElement("name_m");
    manipulation.appendChild(name_m);
    let name_m_node = doc.createTextNode("Рентгенография");
    name_m.appendChild(name_m_node);

    let price = doc.createElement("price");
    manipulation.appendChild(price);
    let price_node = doc.createTextNode("50");
    price.appendChild(price_node);

    let duration = doc.createElement("duration");
    manipulation.appendChild(duration);
    let duration_node = doc.createTextNode("30");
    duration.appendChild(duration_node);

    ///////////////////////////////////////////////////////
    let patients = doc.createElement("patients");
    veterinary_clinic.appendChild(patients);

    let patient = doc.createElement("patient");
    patient.setAttribute("presence_of_castration", "YES");
    patient.setAttribute("no_microchip", "MNO0000001");
    patients.appendChild(patient);

    let name_p = doc.createElement("name_p");
    patient.appendChild(name_p);
    let name_p_node = doc.createTextNode("Кай");
    name_p.appendChild(name_p_node);

    let type = doc.createElement("type");
    patient.appendChild(type);
    let type_node = doc.createTextNode("Куче");
    type.appendChild(type_node);

    let breed = doc.createElement("breed");
    patient.appendChild(breed);
    let breed_node = doc.createTextNode("Хъски");
    breed.appendChild(breed_node);

    let gender = doc.createElement("gender");
    patient.appendChild(gender);
    let gender_node = doc.createTextNode("М");
    gender.appendChild(gender_node);

    let age = doc.createElement("age");
    patient.appendChild(age);
    let age_node = doc.createTextNode("10");
    age.appendChild(age_node);

    let weight = doc.createElement("weight");
    patient.appendChild(weight);
    let weight_node = doc.createTextNode("30");
    weight.appendChild(weight_node);

    ///////////////////////////////////////////////////////
    let owners = doc.createElement("owners");
    veterinary_clinic.appendChild(owners);

    let owner = doc.createElement("owner");
    owner.setAttribute("id", "O00001");
    owners.appendChild(owner);

    let name_o = doc.createElement("name_o");
    owner.appendChild(name_o);
    let name_o_node = doc.createTextNode("Боянна-Ди");
    name_o.appendChild(name_o_node);

    let last_name_o = doc.createElement("last_name_o");
    owner.appendChild(last_name_o);
    let last_name_o_node = doc.createTextNode("Маринова");
    last_name_o.appendChild(last_name_o_node);

    let phone_number_o = doc.createElement("phone_number_o");
    owner.appendChild(phone_number_o);
    let phone_number_o_node = doc.createTextNode("0881234566");
    phone_number_o.appendChild(phone_number_o_node);

    let region = doc.createElement("region");
    owner.appendChild(region);
    let region_node = doc.createTextNode("Козлодуй");
    region.appendChild(region_node);

    let email_o = doc.createElement("email_o");
    owner.appendChild(email_o);
    let email_o_node = doc.createTextNode("b.marinova@gmail.com");
    email_o.appendChild(email_o_node);

    doc.appendChild(veterinary_clinic);
    return doc;
}