/*
 * Copyright (c) 2010, Oracle. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of Oracle nor the names of its contributors
 *   may be used to endorse or promote products derived from this software without
 *   specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 */
package enterprise.web_jpa_war.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author mitesh
 * @alterado por wyamashita
 */
@Entity
@Table(name = "PERSON")
public class Person implements java.io.Serializable {

    @Id
    @SequenceGenerator(name = "Person_ID", sequenceName = "Person_ID")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "Person_ID")
    @Column(name = "Person_ID")
    private Integer person_ID;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "docRG")
    private String docRG;

    @Column(name = "docCPF")
    private String docCPF;

    @Temporal(TemporalType.DATE)
    @Column(name = "dataNasc")
    private Date dataNasc;

    /**
     * Creates a new instance of Person
     */
    public Person() {
    }

    public Person(String firstName, String lastName, String docRG, String docCPF, Date dataNasc) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.docRG = docRG;
        this.docCPF = docCPF;
        this.dataNasc = dataNasc;
    }

    public Integer getId() {
        return this.person_ID;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getDocRG() {
        return this.docRG;
    }

    public String getDocCPF() {
        return this.docCPF;
    }

    public Date getDataNasc() {
        return this.dataNasc;
    }
}
