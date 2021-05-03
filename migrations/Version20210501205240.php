<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210501205240 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE biens ADD surface INT NOT NULL, ADD nb_pieces INT NOT NULL, ADD nb_chambres INT NOT NULL, ADD etages INT NOT NULL, ADD prix INT NOT NULL, ADD ville VARCHAR(100) NOT NULL, ADD adresse VARCHAR(255) NOT NULL, ADD cp VARCHAR(255) NOT NULL, ADD vendu TINYINT(1) DEFAULT \'0\' NOT NULL, ADD date_creation DATETIME NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE biens DROP surface, DROP nb_pieces, DROP nb_chambres, DROP etages, DROP prix, DROP ville, DROP adresse, DROP cp, DROP vendu, DROP date_creation');
    }
}
