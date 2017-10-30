.class public final enum Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;
.super Ljava/lang/Enum;
.source "ContactPickerColorScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

.field public static final enum DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

.field public static final enum DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    const-string v1, "DEFAULT_SCHEME"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    .line 7
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    const-string v1, "DIVEBAR_SCHEME"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DEFAULT_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->DIVEBAR_SCHEME:Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->$VALUES:[Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    invoke-virtual {v0}, [Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/ContactPickerColorScheme;

    return-object v0
.end method
