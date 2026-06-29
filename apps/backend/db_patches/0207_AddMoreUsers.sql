DO
$$
BEGIN
    IF register_patch('AddLasers4EUDemoUsers.sql', 'Mohamed Hassan', 'Add Lasers4EU demo users', '2024-01-01') THEN

        -- Julia Michel | role: user
        INSERT INTO users (
            user_title, firstname, lastname, preferredname,
            oidc_sub, oauth_refresh_token, oauth_issuer,
            email, email_verified, placeholder
        ) VALUES (
            'Ms.', 'Julia', 'Michel', 'Julia',
            'julia.michel.oauthsub', 'dummy-refresh-token', 'dummy-issuer',
            'JM@lasers4EU.proposal.demo', true, false
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 1, user_id FROM users WHERE email = 'JM@lasers4EU.proposal.demo';

        -- Sylvie Jacquemot | role: user
        INSERT INTO users (
            user_title, firstname, lastname, preferredname,
            oidc_sub, oauth_refresh_token, oauth_issuer,
            email, email_verified, placeholder
        ) VALUES (
            'Ms.', 'Sylvie', 'Jacquemot', 'Sylvie',
            'sylvie.jacquemot.oauthsub', 'dummy-refresh-token', 'dummy-issuer',
            'SJ@lasers4EU.proposal.demo', true, false
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 1, user_id FROM users WHERE email = 'SJ@lasers4EU.proposal.demo';

        -- Chris Gregory | role: user_officer
        INSERT INTO users (
            user_title, firstname, lastname, preferredname,
            oidc_sub, oauth_refresh_token, oauth_issuer,
            email, email_verified, placeholder
        ) VALUES (
            'Mr.', 'Chris', 'Gregory', 'Chris',
            'christopher.gregory.oauthsub', 'dummy-refresh-token', 'dummy-issuer',
            'christopher.gregory@stfc.ac.uk', true, false
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 2, user_id FROM users WHERE email = 'christopher.gregory@stfc.ac.uk';

        -- Lasers4EU Admin | role: user_officer
        INSERT INTO users (
            user_title, firstname, lastname, preferredname,
            oidc_sub, oauth_refresh_token, oauth_issuer,
            email, email_verified, placeholder
        ) VALUES (
            'Mr.', 'Lasers4EU', 'Admin', 'L4EU Admin',
            'l4eu.officer.oauthsub', 'dummy-refresh-token', 'dummy-issuer',
            'User_Officer@lasers4EU.proposal.demo', true, false
        );

        INSERT INTO role_user (role_id, user_id)
        SELECT 2, user_id FROM users WHERE email = 'User_Officer@lasers4EU.proposal.demo';

    END IF;
END;
$$
LANGUAGE plpgsql;