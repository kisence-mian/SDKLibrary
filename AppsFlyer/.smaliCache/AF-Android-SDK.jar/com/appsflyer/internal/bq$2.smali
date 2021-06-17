.class final Lcom/appsflyer/internal/bq$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/bq;->AFInAppEventType(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/internal/bq;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/bq;Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .registers 4

    .line 73
    iput-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iput-object p2, p0, Lcom/appsflyer/internal/bq$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsflyer/internal/bq$2;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .registers 2

    .line 150
    const-string v0, "Install Referrer service disconnected"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .registers 10

    .line 76
    const-string v0, "instant"

    const-string v1, "ReferrerClient: InstallReferrer is not ready"

    const-string v2, "err"

    iget-object v3, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v3, v3, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    nop

    .line 78
    iget-object v3, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v3, v3, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/bq$2;->val$context:Landroid/content/Context;

    const-string v5, "com.android.vending"

    invoke-static {v4, v5}, Lcom/appsflyer/internal/ac;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "api_ver"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v3, v3, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/bq$2;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/appsflyer/internal/ac;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "api_ver_name"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v3, "response"

    packed-switch p1, :pswitch_data_188

    .line 141
    const-string p1, "responseCode not found."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    goto/16 :goto_178

    .line 133
    :pswitch_44
    const-string p1, "InstallReferrer DEVELOPER_ERROR"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "DEVELOPER_ERROR"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    goto/16 :goto_178

    .line 125
    :pswitch_54
    const-string p1, "InstallReferrer FEATURE_NOT_SUPPORTED"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    goto/16 :goto_178

    .line 129
    :pswitch_64
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "SERVICE_UNAVAILABLE"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string p1, "InstallReferrer not supported"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 131
    goto/16 :goto_178

    .line 82
    :pswitch_74
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "OK"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :try_start_7d
    const-string p1, "InstallReferrer connected"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result p1

    if-eqz p1, :cond_136

    .line 86
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_a8

    .line 89
    iget-object v3, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v3, v3, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    const-string v4, "val"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v3, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v3, v3, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_a8
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v3

    .line 93
    iget-object v1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v1, v1, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    const-string v5, "clk"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v1, v1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "click_ts"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v3

    .line 96
    iget-object v1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v1, v1, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    const-string v5, "install"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v1, v1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "install_begin_ts"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_e9
    .catchall {:try_start_7d .. :try_end_e9} :catchall_142

    .line 101
    :try_start_e9
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result v3

    .line 102
    iget-object v4, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v4, v4, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e9 .. :try_end_ff} :catch_100
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_142

    .line 105
    goto :goto_101

    .line 104
    :catch_100
    move-exception v0

    .line 108
    :goto_101
    :try_start_101
    const-string v0, "click_server_ts"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "install_begin_server_ts"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "install_version"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_124
    .catch Ljava/lang/NoSuchMethodError; {:try_start_101 .. :try_end_124} :catch_125
    .catchall {:try_start_101 .. :try_end_124} :catchall_142

    .line 112
    goto :goto_126

    .line 111
    :catch_125
    move-exception p1

    .line 113
    :goto_126
    :try_start_126
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_135

    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "google_custom"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_135
    goto :goto_141

    .line 115
    :cond_136
    nop

    .line 116
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_141
    .catchall {:try_start_126 .. :try_end_141} :catchall_142

    .line 122
    :goto_141
    goto :goto_178

    .line 119
    :catchall_142
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get install referrer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object v0, v0, Lcom/appsflyer/internal/bq;->values:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    goto :goto_178

    .line 137
    :pswitch_169
    const-string p1, "InstallReferrer SERVICE_DISCONNECTED"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFVersionDeclaration(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    iget-object p1, p1, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "SERVICE_DISCONNECTED"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    nop

    .line 143
    :goto_178
    const-string p1, "Install Referrer collected locally"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->this$0:Lcom/appsflyer/internal/bq;

    invoke-virtual {p1}, Lcom/appsflyer/internal/bq;->AFKeystoreWrapper()V

    .line 145
    iget-object p1, p0, Lcom/appsflyer/internal/bq$2;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 146
    return-void

    :pswitch_data_188
    .packed-switch -0x1
        :pswitch_169
        :pswitch_74
        :pswitch_64
        :pswitch_54
        :pswitch_44
    .end packed-switch
.end method
