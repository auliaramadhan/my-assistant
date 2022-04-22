// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromMap(jsonString);

import 'dart:convert';

class RegisterRequest {
    RegisterRequest({
        this.email,
        this.password,
        this.confirmPassword,
        this.phoneNumber,
        this.profileImageUrl,
        this.identityCard,
        this.fullName,
        this.placeOfBirth,
        this.birthday,
        this.fullAddress,
        this.city,
        this.district,
        this.gender,
        this.maritalStatus,
        this.religion,
        this.ethnicity,
        this.currentCity,
        this.skills,
        this.salary,
        this.description,
        this.workExperience,
    });

    final String? email;
    final String? password;
    final String? confirmPassword;
    final String? phoneNumber;
    final String? profileImageUrl;
    final IdentityCard? identityCard;
    final String? fullName;
    final String? placeOfBirth;
    final String? birthday;
    final String? fullAddress;
    final String? city;
    final String? district;
    final String? gender;
    final String? maritalStatus;
    final String? religion;
    final String? ethnicity;
    final String? currentCity;
    final List<Skill>? skills;
    final List<Salary>? salary;
    final String? description;
    final List<WorkExperience>? workExperience;

    RegisterRequest copyWith({
        String? email,
        String? password,
        String? confirmPassword,
        String? phoneNumber,
        String? profileImageUrl,
        IdentityCard? identityCard,
        String? fullName,
        String? placeOfBirth,
        String? birthday,
        String? fullAddress,
        String? city,
        String? district,
        String? gender,
        String? maritalStatus,
        String? religion,
        String? ethnicity,
        String? currentCity,
        List<Skill>? skills,
        List<Salary>? salary,
        String? description,
        List<WorkExperience>? workExperience,
    }) => 
        RegisterRequest(
            email: email ?? this.email,
            password: password ?? this.password,
            confirmPassword: confirmPassword ?? this.confirmPassword,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            profileImageUrl: profileImageUrl ?? this.profileImageUrl,
            identityCard: identityCard ?? this.identityCard,
            fullName: fullName ?? this.fullName,
            placeOfBirth: placeOfBirth ?? this.placeOfBirth,
            birthday: birthday ?? this.birthday,
            fullAddress: fullAddress ?? this.fullAddress,
            city: city ?? this.city,
            district: district ?? this.district,
            gender: gender ?? this.gender,
            maritalStatus: maritalStatus ?? this.maritalStatus,
            religion: religion ?? this.religion,
            ethnicity: ethnicity ?? this.ethnicity,
            currentCity: currentCity ?? this.currentCity,
            skills: skills ?? this.skills,
            salary: salary ?? this.salary,
            description: description ?? this.description,
            workExperience: workExperience ?? this.workExperience,
        );

    factory RegisterRequest.fromJson(String str) => RegisterRequest.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RegisterRequest.fromMap(Map<String, dynamic> json) => RegisterRequest(
        email: json["email"],
        password: json["password"],
        confirmPassword: json["confirm_password"],
        phoneNumber: json["phone_number"],
        profileImageUrl: json["profile_image_url"],
        identityCard: IdentityCard.fromMap(json["identity_card"]),
        fullName: json["full_name"],
        placeOfBirth: json["place_of_birth"],
        birthday: json["birthday"],
        fullAddress: json["full_address"],
        city: json["city"],
        district: json["district"],
        gender: json["gender"],
        maritalStatus: json["marital_status"],
        religion: json["religion"],
        ethnicity: json["ethnicity"],
        currentCity: json["current_city"],
        skills: List<Skill>.from(json["skills"].map((x) => Skill.fromMap(x))),
        salary: List<Salary>.from(json["salary"].map((x) => Salary.fromMap(x))),
        description: json["description"],
        workExperience: List<WorkExperience>.from(json["work_experience"].map((x) => WorkExperience.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
        "confirm_password": confirmPassword,
        "phone_number": phoneNumber,
        "profile_image_url": profileImageUrl,
        "identity_card": identityCard?.toMap(),
        "full_name": fullName,
        "place_of_birth": placeOfBirth,
        "birthday": birthday,
        "full_address": fullAddress,
        "city": city,
        "district": district,
        "gender": gender,
        "marital_status": maritalStatus,
        "religion": religion,
        "ethnicity": ethnicity,
        "current_city": currentCity,
        "skills":  skills?.map((x) => x.toMap()),
        "salary": salary?.map((x) => x.toMap()),
        "description": description,
        "work_experience": workExperience?.map((x) => x.toMap()),
    };
}

class IdentityCard {
    IdentityCard({
        this.identityCardType,
        this.identityCardNumber,
        this.identityCardImageUrl,
    });

    final int? identityCardType;
    final int? identityCardNumber;
    final String? identityCardImageUrl;

    IdentityCard copyWith({
        int? identityCardType,
        int? identityCardNumber,
        String? identityCardImageUrl,
    }) => 
        IdentityCard(
            identityCardType: identityCardType ?? this.identityCardType,
            identityCardNumber: identityCardNumber ?? this.identityCardNumber,
            identityCardImageUrl: identityCardImageUrl ?? this.identityCardImageUrl,
        );

    factory IdentityCard.fromJson(String str) => IdentityCard.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory IdentityCard.fromMap(Map<String, dynamic> json) => IdentityCard(
        identityCardType: json["identity_card_type"],
        identityCardNumber: json["identity_card_number"],
        identityCardImageUrl: json["identity_card_image_url"],
    );

    Map<String, dynamic> toMap() => {
        "identity_card_type": identityCardType,
        "identity_card_number": identityCardNumber,
        "identity_card_image_url": identityCardImageUrl,
    };
}

class Salary {
    Salary({
        this.jobTypeId,
        this.startSalary,
        this.endSalary,
    });

    final int? jobTypeId;
    final int? startSalary;
    final int? endSalary;

    Salary copyWith({
        int? jobTypeId,
        int? startSalary,
        int? endSalary,
    }) => 
        Salary(
            jobTypeId: jobTypeId ?? this.jobTypeId,
            startSalary: startSalary ?? this.startSalary,
            endSalary: endSalary ?? this.endSalary,
        );

    factory Salary.fromJson(String str) => Salary.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Salary.fromMap(Map<String, dynamic> json) => Salary(
        jobTypeId: json["job_type_id"],
        startSalary: json["start_salary"],
        endSalary: json["end_salary"],
    );

    Map<String, dynamic> toMap() => {
        "job_type_id": jobTypeId,
        "start_salary": startSalary,
        "end_salary": endSalary,
    };
}

class Skill {
    Skill({
        this.skillId,
        this.otherSkillName,
    });

    final int? skillId;
    final String? otherSkillName;

    Skill copyWith({
        int? skillId,
        String? otherSkillName,
    }) => 
        Skill(
            skillId: skillId ?? this.skillId,
            otherSkillName: otherSkillName ?? this.otherSkillName,
        );

    factory Skill.fromJson(String str) => Skill.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Skill.fromMap(Map<String, dynamic> json) => Skill(
        skillId: json["skill_id"],
        otherSkillName: json["other_skill_name"] == null ? null : json["other_skill_name"],
    );

    Map<String, dynamic> toMap() => {
        "skill_id": skillId,
        "other_skill_name": otherSkillName == null ? null : otherSkillName,
    };
}

class WorkExperience {
    WorkExperience({
        this.experienceName,
        this.experienceYears,
        this.description,
    });

    final String? experienceName;
    final int? experienceYears;
    final String? description;

    WorkExperience copyWith({
        String? experienceName,
        int? experienceYears,
        String? description,
    }) => 
        WorkExperience(
            experienceName: experienceName ?? this.experienceName,
            experienceYears: experienceYears ?? this.experienceYears,
            description: description ?? this.description,
        );

    factory WorkExperience.fromJson(String str) => WorkExperience.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory WorkExperience.fromMap(Map<String, dynamic> json) => WorkExperience(
        experienceName: json["experience_name"],
        experienceYears: json["experience_years"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "experience_name": experienceName,
        "experience_years": experienceYears,
        "description": description,
    };
}
