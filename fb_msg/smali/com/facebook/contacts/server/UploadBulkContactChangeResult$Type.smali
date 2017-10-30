.class public final enum Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;
.super Ljava/lang/Enum;
.source "UploadBulkContactChangeResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

.field public static final enum ADD:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

.field public static final enum CHANGE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

.field public static final enum NONE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

.field public static final enum REMOVE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->ADD:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    .line 13
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    const-string v1, "CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->CHANGE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    .line 14
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->REMOVE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    .line 15
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->NONE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    sget-object v1, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->ADD:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->CHANGE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->REMOVE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->NONE:Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->$VALUES:[Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->$VALUES:[Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    invoke-virtual {v0}, [Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/contacts/server/UploadBulkContactChangeResult$Type;

    return-object v0
.end method
