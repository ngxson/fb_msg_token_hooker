.class public Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;
.super Ljava/lang/Object;
.source "ContactPickerUserRow.java"

# interfaces
.implements Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/users/UserWithIdentifier;

.field private final b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->b()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    .line 30
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c:Z

    .line 31
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->d:Z

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRowBuilder;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->e:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/UserWithIdentifier;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a:Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
