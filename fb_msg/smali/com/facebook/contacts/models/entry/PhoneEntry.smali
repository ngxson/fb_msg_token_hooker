.class public Lcom/facebook/contacts/models/entry/PhoneEntry;
.super Ljava/lang/Object;
.source "PhoneEntry.java"

# interfaces
.implements Lcom/facebook/contacts/models/entry/Entry;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/contacts/models/entry/PhoneEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/facebook/contacts/models/entry/PhoneEntry$1;

    invoke-direct {v0}, Lcom/facebook/contacts/models/entry/PhoneEntry$1;-><init>()V

    sput-object v0, Lcom/facebook/contacts/models/entry/PhoneEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->b:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "number"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "type"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->a:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/models/entry/Entry$Type;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/contacts/models/entry/Entry$Type;->PHONE_NUMBER:Lcom/facebook/contacts/models/entry/Entry$Type;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number"
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lcom/facebook/contacts/models/entry/PhoneEntry;

    .line 56
    iget-object v2, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/entry/PhoneEntry;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 57
    :cond_4
    iget v2, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->b:I

    invoke-virtual {p1}, Lcom/facebook/contacts/models/entry/PhoneEntry;->c()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/facebook/contacts/models/entry/PhoneEntry;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
