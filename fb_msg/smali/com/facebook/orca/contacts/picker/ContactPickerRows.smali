.class public Lcom/facebook/orca/contacts/picker/ContactPickerRows;
.super Ljava/lang/Object;
.source "ContactPickerRows.java"


# static fields
.field public static final a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

.field public static final b:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

.field public static c:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

.field public static d:Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows$1;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRows$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 11
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows$2;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRows$2;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->b:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 12
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows$3;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRows$3;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->c:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 13
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows$4;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRows$4;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerRows;->d:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
