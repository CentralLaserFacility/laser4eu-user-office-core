DO
$$
BEGIN
    IF register_patch('AddLasers4EUDemoUsers.sql', 'Mohamed Hassan', 'Add Lasers4EU demo users', '2024-01-01') THEN

        -- Julia Michel | role: user
        INSERT INTO users (
            user_title, firstname, middlename, lastname,
            username, password, preferredname,
            oidc_sub, oauth_refresh_token, oauth_access_token, oauth_issuer,
            gender, nationality, birthdate,
            organisation, department, organisation_address, position,
            email, email_verified, telephone, telephone_alt
        ) VALUES (
            'Ms.', 'Julia', '', 'Michel',
            'julia.michel', '$2a$10$1svMW3/FwE5G1BpE7/CPW.aMyEymEBeWK4tSTtABbsoo/KaSQ.vwm', 'Julia',
            'julia.michel.oauthsub', 'dummy-refresh-token', 'dummy-access-token', 'dummy-issuer',
            'female', 'French', '1990-01-01',
            'Lasers4EU', 'Research', 'Lasers4EU HQ', 'Researcher',
            'JM@lasers4EU.proposal.demo', true, '', ''
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 1, user_id FROM users WHERE email = 'JM@lasers4EU.proposal.demo';

        -- Sylvie Jacquemot | role: user
        INSERT INTO users (
            user_title, firstname, middlename, lastname,
            username, password, preferredname,
            oidc_sub, oauth_refresh_token, oauth_access_token, oauth_issuer,
            gender, nationality, birthdate,
            organisation, department, organisation_address, position,
            email, email_verified, telephone, telephone_alt
        ) VALUES (
            'Ms.', 'Sylvie', '', 'Jacquemot',
            'sylvie.jacquemot', '$2a$10$1svMW3/FwE5G1BpE7/CPW.aMyEymEBeWK4tSTtABbsoo/KaSQ.vwm', 'Sylvie',
            'sylvie.jacquemot.oauthsub', 'dummy-refresh-token', 'dummy-access-token', 'dummy-issuer',
            'female', 'French', '1990-01-01',
            'Lasers4EU', 'Research', 'Lasers4EU HQ', 'Researcher',
            'SJ@lasers4EU.proposal.demo', true, '', ''
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 1, user_id FROM users WHERE email = 'SJ@lasers4EU.proposal.demo';

        -- Chris Gregory | role: user_officer
        INSERT INTO users (
            user_title, firstname, middlename, lastname,
            username, password, preferredname,
            oidc_sub, oauth_refresh_token, oauth_access_token, oauth_issuer,
            gender, nationality, birthdate,
            organisation, department, organisation_address, position,
            email, email_verified, telephone, telephone_alt
        ) VALUES (
            'Mr.', 'Chris', '', 'Gregory',
            'christopher.gregory', '$2a$10$1svMW3/FwE5G1BpE7/CPW.aMyEymEBeWK4tSTtABbsoo/KaSQ.vwm', 'Chris',
            'christopher.gregory.oauthsub', 'dummy-refresh-token', 'dummy-access-token', 'dummy-issuer',
            'male', 'British', '1985-06-15',
            'STFC', 'Scientific Computing', 'Rutherford Appleton Laboratory, Harwell, OX11 0QX', 'User Officer',
            'christopher.gregory@stfc.ac.uk', true, '', ''
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 2, user_id FROM users WHERE email = 'christopher.gregory@stfc.ac.uk';

        -- Lasers4EU Admin | role: user_officer | password: L4EU_officer
        INSERT INTO users (
            user_title, firstname, middlename, lastname,
            username, password, preferredname,
            oidc_sub, oauth_refresh_token, oauth_access_token, oauth_issuer,
            gender, nationality, birthdate,
            organisation, department, organisation_address, position,
            email, email_verified, telephone, telephone_alt
        ) VALUES (
            'Mr.', 'Lasers4EU', '', 'Admin',
            'l4eu_officer', '$2b$10$Od0SFWmosrSrC.j4v7E3qOncKDM.SwwmhvmBQDpx0jCbsqlG77ZU6', 'L4EU Admin',
            'l4eu.officer.oauthsub', 'dummy-refresh-token', 'dummy-access-token', 'dummy-issuer',
            'other', 'Other', '2000-01-01',
            'Lasers4EU', 'Administration', 'Lasers4EU HQ', 'Administrator',
            'User_Officer@lasers4EU.proposal.demo', true, '', ''
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 2, user_id FROM users WHERE email = 'User_Officer@lasers4EU.proposal.demo';

    END IF;
END;
$$
LANGUAGE plpgsql;