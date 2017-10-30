.class public Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;
.super Ljava/lang/Object;
.source "ContactPickerUserRowBuilder.java"


# instance fields
.field private a:Lcom/facebook/orca/users/UserWithIdentifier;

.field private b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;)V

    return-object v0
.end method

.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    .line 35
    return-object p0
.end method

.method public a(Lcom/facebook/orca/users/UserWithIdentifier;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    .line 26
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->e:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->c:Z

    .line 44
    return-object p0
.end method

.method public b(Z)Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->d:Z

    .line 53
    return-object p0
.end method

.method public b()Lcom/facebook/orca/users/UserWithIdentifier;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->d:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->e:Ljava/lang/String;

    return-object v0
.end method
