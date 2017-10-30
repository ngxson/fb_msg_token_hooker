.class public Lcom/facebook/contacts/data/ContactsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "ContactsModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule;->a:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/data/ContactsModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/contacts/data/ContactsModule;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    const-class v0, Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 138
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    invoke-static {v0, p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 139
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const-class v0, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 68
    const-class v0, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsDatabaseSupplierProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 71
    const-class v0, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactSerializationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactSerializationProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 74
    const-class v0, Lcom/facebook/contacts/data/DbFetchContactHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$DbFetchContactHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$DbFetchContactHandlerProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 77
    const-class v0, Lcom/facebook/contacts/data/DbInsertContactHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 80
    const-class v0, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$DbInsertContactHandlerContactNameLookupBuilderProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 82
    const-class v0, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 84
    const-class v0, Lcom/facebook/contacts/service/AddressBookContactFetcher;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$AddressBookContactFetcherProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 87
    const-class v0, Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$FetchAllContactsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$FetchAllContactsMethodProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 89
    const-class v0, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$UploadBulkContactsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$UploadBulkContactsMethodProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 91
    const-class v0, Lcom/facebook/contacts/graphql/ContactGraphQL;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 94
    const-class v0, Lcom/facebook/contacts/contactslist/ContactsListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 98
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/annotations/IsContactsListEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/contactslist/IsContactsListEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 101
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/annotations/IsRolodexPickerEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/picker/IsRolodexPickerEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 104
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/annotations/IsRolodexContactCardEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/contactcard/IsRolodexContactCardEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 108
    const-class v0, Lcom/facebook/contacts/service/ContactsServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsServiceHandlerProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 111
    const-class v0, Lcom/facebook/contacts/cache/ContactsCache;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsCacheProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 115
    const-class v0, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/contacts/annotations/WithContacts;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsUserIteratorProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 118
    const-class v0, Lcom/facebook/contacts/iterator/DbContactIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 120
    const-class v0, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 124
    const-class v0, Lcom/facebook/contacts/contactslist/ContactsListLoader;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$ContactsListLoaderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$ContactsListLoaderProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 128
    const-class v0, Lcom/facebook/contacts/service/ContactsQueue;

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$OrcaServiceHandlerForContactsQueueProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$OrcaServiceHandlerForContactsQueueProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 129
    const-class v0, Lcom/facebook/contacts/service/ContactsSyncQueue;

    new-instance v1, Lcom/facebook/contacts/data/ContactsModule$OrcaServiceHandlerForContactsQueueProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/data/ContactsModule$OrcaServiceHandlerForContactsQueueProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/contacts/data/ContactsModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 130
    return-void
.end method
