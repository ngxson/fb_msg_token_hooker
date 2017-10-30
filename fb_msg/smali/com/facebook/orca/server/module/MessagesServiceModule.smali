.class public Lcom/facebook/orca/server/module/MessagesServiceModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MessagesServiceModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 133
    return-void
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
    .line 57
    const-class v0, Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 60
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    invoke-static {v0, p1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 61
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    const-class v0, Lcom/facebook/orca/server/module/ThreadsQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 38
    const-class v0, Lcom/facebook/orca/server/module/PushQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 39
    const-class v0, Lcom/facebook/orca/server/module/AddressBookQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForAddressBookProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForAddressBookProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 40
    const-class v0, Lcom/facebook/orca/server/module/LocationQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForLocationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForLocationProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 41
    const-class v0, Lcom/facebook/orca/server/module/RegistrationQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerWithJustWebServiceProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerWithJustWebServiceProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 42
    const-class v0, Lcom/facebook/orca/server/module/ImageSearchQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForImageSearchProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForImageSearchProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 43
    const-class v0, Lcom/facebook/orca/server/module/AnalyticsQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerWithJustWebServiceProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerWithJustWebServiceProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 44
    const-class v0, Lcom/facebook/orca/server/module/ContactsUploadQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForContactsUploadProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForContactsUploadProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 45
    const-class v0, Lcom/facebook/orca/server/module/PhoneNumberIdentificationQueue;

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;Ljavax/inject/Provider;)V

    .line 48
    const-class v0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/module/MessagesServiceModule$MessagesServicesInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$MessagesServicesInitializerProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 50
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/module/MessagesServiceModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/server/module/MessagesServicesInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 52
    return-void
.end method
