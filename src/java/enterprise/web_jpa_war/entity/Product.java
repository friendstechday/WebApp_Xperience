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
@Table(name = "PRODUCT")
public class Product implements java.io.Serializable {

    @Id
    @SequenceGenerator(name = "Prod_ID", sequenceName = "Prod_ID")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "Prod_ID")
    @Column(name = "Prod_ID")
    private Integer prod_ID;

    @Column(name = "descricao")
    private String descricao;

    @Column(name = "valor")
    private Float valor;

    @Column(name = "quantidade")
    private Float quantidade;

    @Column(name = "custo")
    private Float custo;

    @Temporal(TemporalType.DATE)
    @Column(name = "validade")
    private Date validade;

    /**
     * Creates a new instance of Person
     */
    public Product() {
    }

    public Product(String descricao, Float valor, Float quantidade, Float custo, Date validade) {
        this.descricao = descricao;
        this.valor = valor;
        this.quantidade = quantidade;
        this.custo = custo;
        this.validade = validade;
    }

    public Integer getId() {
        return this.prod_ID;
    }

    public String getDescricao() {
        return this.descricao;
    }

    public Float getValor() {
        return this.valor;
    }

    public Float getQuantidade() {
        return this.quantidade;
    }

    public Float getCusto() {
        return this.custo;
    }

    public Date getValidade() {
        return this.validade;
    }
}
