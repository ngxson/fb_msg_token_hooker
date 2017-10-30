.class public Lcom/facebook/orca/server/module/MessagesServicesInitializer;
.super Ljava/lang/Object;
.source "MessagesServicesInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Lcom/facebook/orca/server/OrcaServiceRegistry;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/OrcaServiceRegistry;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    .line 24
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 29
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/PushQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 30
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/RegistrationQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/contacts/service/ContactsQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 32
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/contacts/service/ContactsSyncQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/LocationQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/AnalyticsQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/ImageSearchQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/AddressBookQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/ContactsUploadQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a:Lcom/facebook/orca/server/OrcaServiceRegistry;

    const-class v1, Lcom/facebook/orca/server/module/PhoneNumberIdentificationQueue;

    const-class v2, Lcom/facebook/orca/server/MessagesService;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 41
    const-string v0, "auth"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    const-string v0, "auth_sso"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    const-string v0, "auth_expire_session"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    const-string v0, "login"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    const-string v0, "create_thread"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    const-string v0, "delete_thread"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    const-string v0, "delete_messages"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    const-string v0, "fetch_thread_list"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    const-string v0, "fetch_more_threads"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    const-string v0, "fetch_thread"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    const-string v0, "add_members"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-string v0, "remove_member"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-string v0, "mark_thread"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-string v0, "read_receipt"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-string v0, "delivered_receipt"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    const-string v0, "mark_folder_seen"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-string v0, "fetch_more_messages"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    const-string v0, "modify_thread"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-string v0, "send"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-string v0, "request_sms_confirmation_code"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-string v0, "confirm_phone"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    const-string v0, "get_app_info"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-string v0, "update_user_settings"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-string v0, "chat_set_visiblity"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    const-string v0, "chat_get_visibility"

    const-class v1, Lcom/facebook/orca/server/module/ThreadsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    const-string v0, "queue_message"

    const-class v1, Lcom/facebook/orca/server/module/PushQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    const-string v0, "save_draft"

    const-class v1, Lcom/facebook/orca/server/module/PushQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-string v0, "pushed_message"

    const-class v1, Lcom/facebook/orca/server/module/PushQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const-string v0, "push_trace_confirmation"

    const-class v1, Lcom/facebook/orca/server/module/PushQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    const-string v0, "register_push"

    const-class v1, Lcom/facebook/orca/server/module/RegistrationQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    const-string v0, "unregister_push"

    const-class v1, Lcom/facebook/orca/server/module/RegistrationQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 79
    const-string v0, "fetch_contact"

    const-class v1, Lcom/facebook/contacts/service/ContactsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-string v0, "sync_contacts_complete"

    const-class v1, Lcom/facebook/contacts/service/ContactsSyncQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-string v0, "sync_contacts_partial"

    const-class v1, Lcom/facebook/contacts/service/ContactsSyncQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-string v0, "contacts_upload"

    const-class v1, Lcom/facebook/orca/server/module/ContactsUploadQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    const-string v0, "verify_phone_number"

    const-class v1, Lcom/facebook/orca/server/module/PhoneNumberIdentificationQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    const-string v0, "sync_address_book"

    const-class v1, Lcom/facebook/orca/server/module/AddressBookQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 93
    const-string v0, "sync_top_last_active"

    const-class v1, Lcom/facebook/orca/server/module/AddressBookQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 94
    const-string v0, "update_favorite_contacts"

    const-class v1, Lcom/facebook/orca/server/module/AddressBookQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 95
    const-string v0, "get_device_location"

    const-class v1, Lcom/facebook/orca/server/module/LocationQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    const-string v0, "analytics_upload"

    const-class v1, Lcom/facebook/orca/server/module/AnalyticsQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 97
    const-string v0, "image_search"

    const-class v1, Lcom/facebook/orca/server/module/ImageSearchQueue;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/module/MessagesServicesInitializer;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 98
    return-void
.end method
