INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 'https://thumbs.dreamstime.com/b/encyclopedia-icon-vector-books-literature-concept-thin-line-illustration-encyclopedia-editable-stroke-encyclopedia-192159356.jpg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Atividade corrigida', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', FALSE, 'https://link', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Atividade corrigida', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', FALSE, 'https://link', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Atividade corrigida', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', FALSE, 'https://link', 3);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas d??vidas', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 1', 'Neste cap??tudo vamos come??ar', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 2', 'Neste cap??tudo vamos continuar', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 3', 'Neste cap??tudo vamos finalizar', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);