.class public Ldifflib/DiffRow;
.super Ljava/lang/Object;
.source "DiffRow.java"


# instance fields
.field private a:Ldifflib/DiffRow$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    check-cast p1, Ldifflib/DiffRow;

    .line 110
    iget-object v2, p0, Ldifflib/DiffRow;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 111
    iget-object v2, p1, Ldifflib/DiffRow;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Ldifflib/DiffRow;->c:Ljava/lang/String;

    iget-object v3, p1, Ldifflib/DiffRow;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iget-object v2, p0, Ldifflib/DiffRow;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 116
    iget-object v2, p1, Ldifflib/DiffRow;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    iget-object v2, p0, Ldifflib/DiffRow;->b:Ljava/lang/String;

    iget-object v3, p1, Ldifflib/DiffRow;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iget-object v2, p0, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    if-nez v2, :cond_8

    .line 121
    iget-object v2, p1, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    if-eqz v2, :cond_0

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_8
    iget-object v2, p0, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    iget-object v3, p1, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    invoke-virtual {v2, v3}, Ldifflib/DiffRow$Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 124
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    .line 90
    iget-object v0, p0, Ldifflib/DiffRow;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 91
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldifflib/DiffRow;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 93
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Ldifflib/DiffRow;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Ldifflib/DiffRow;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 92
    :cond_2
    iget-object v1, p0, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    invoke-virtual {v1}, Ldifflib/DiffRow$Tag;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldifflib/DiffRow;->a:Ldifflib/DiffRow$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldifflib/DiffRow;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldifflib/DiffRow;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
