.class public Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;
.super Ljava/lang/Object;
.source "ContactPickerMergedFilter.java"


# instance fields
.field private final a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->b:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->c:Z

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->a:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;->b:Ljava/lang/String;

    return-object v0
.end method
