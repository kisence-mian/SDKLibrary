.class public Lcom/androidquery/auth/FacebookHandle;
.super Lcom/androidquery/auth/AccountHandle;
.source "FacebookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;
    }
.end annotation


# static fields
.field private static final CANCEL_URI:Ljava/lang/String; = "fbconnect:cancel"

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field private static final FB_PERMISSION:Ljava/lang/String; = "aq.fb.permission"

.field private static final FB_TOKEN:Ljava/lang/String; = "aq.fb.token"

.field private static final OAUTH_ENDPOINT:Ljava/lang/String; = "https://graph.facebook.com/oauth/authorize"

.field private static final REDIRECT_URI:Ljava/lang/String; = "https://www.facebook.com/connect/login_success.html"

.field private static hasSSO:Ljava/lang/Boolean;


# instance fields
.field private act:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private dialog:Lcom/androidquery/WebDialog;

.field private first:Z

.field private message:Ljava/lang/String;

.field private permissions:Ljava/lang/String;

.field private requestId:I

.field private sso:Z

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "permissions"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/auth/FacebookHandle;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "permissions"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/androidquery/auth/AccountHandle;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/androidquery/auth/FacebookHandle;->appId:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    .line 66
    iput-object p3, p0, Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->fetchPermission()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/androidquery/auth/FacebookHandle;->permissionOk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 71
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->fetchToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    .line 74
    :cond_1f
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lcom/androidquery/auth/FacebookHandle;->first:Z

    .line 75
    return-void

    .line 74
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static synthetic access$0(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 359
    invoke-static {p0}, Lcom/androidquery/auth/FacebookHandle;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/androidquery/auth/FacebookHandle;->extractToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/androidquery/auth/FacebookHandle;)V
    .registers 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->show()V

    return-void
.end method

.method static synthetic access$2(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androidquery/auth/FacebookHandle;)V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->dismiss()V

    return-void
.end method

.method static synthetic access$5(Lcom/androidquery/auth/FacebookHandle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androidquery/auth/FacebookHandle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/androidquery/auth/FacebookHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/androidquery/auth/FacebookHandle;Z)V
    .registers 2

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/androidquery/auth/FacebookHandle;->first:Z

    return-void
.end method

.method static synthetic access$8(Lcom/androidquery/auth/FacebookHandle;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$9(Lcom/androidquery/auth/FacebookHandle;)V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->failure()V

    return-void
.end method

.method private static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 347
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v2, "params":Landroid/os/Bundle;
    if-eqz p0, :cond_12

    .line 349
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "array":[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_10
    if-lt v4, v6, :cond_13

    .line 355
    .end local v0    # "array":[Ljava/lang/String;
    :cond_12
    return-object v2

    .line 350
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_13
    aget-object v1, v0, v4

    .line 351
    .local v1, "parameter":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "v":[Ljava/lang/String;
    aget-object v7, v3, v5

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_10
.end method

.method private dismiss()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    if-eqz v0, :cond_13

    .line 129
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    .line 132
    :cond_13
    return-void
.end method

.method private static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 331
    if-nez p0, :cond_5

    .line 332
    const-string v3, ""

    .line 343
    :goto_4
    return-object v3

    .line 334
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 336
    .local v0, "first":Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 336
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, "key":Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 338
    const/4 v0, 0x0

    .line 341
    :goto_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 340
    :cond_46
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method

.method private extractToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 319
    const/16 v2, 0x23

    const/16 v3, 0x3f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "token":Ljava/lang/String;
    const-string v2, "token"

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    return-object v0
.end method

.method private failure()V
    .registers 2

    .prologue
    .line 151
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/androidquery/auth/FacebookHandle;->failure(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private failure(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    const/16 v1, -0x66

    invoke-virtual {p0, v0, v1, p1}, Lcom/androidquery/auth/FacebookHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method private fetchPermission()Ljava/lang/String;
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.permission"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.fb.token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hide()V
    .registers 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    if-eqz v1, :cond_9

    .line 143
    :try_start_4
    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v1}, Lcom/androidquery/WebDialog;->hide()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 148
    :cond_9
    :goto_9
    return-void

    .line 144
    :catch_a
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 362
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/androidquery/auth/FacebookHandle;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 364
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/androidquery/auth/FacebookHandle;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_18} :catch_19

    .line 367
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "u":Ljava/net/URL;
    :goto_18
    return-object v0

    .line 366
    :catch_19
    move-exception v1

    .line 367
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_18
.end method

.method private permissionOk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "permissions"    # Ljava/lang/String;
    .param p2, "old"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    if-nez p1, :cond_5

    .line 112
    :cond_4
    :goto_4
    return v3

    .line 97
    :cond_5
    if-nez p2, :cond_9

    move v3, v4

    goto :goto_4

    .line 99
    :cond_9
    const-string v5, "[,\\s]+"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "splits":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v1, "oldSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "[,\\s]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 106
    aget-object v5, v2, v0

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 107
    const-string v3, "perm mismatch"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    move v3, v4

    .line 108
    goto :goto_4

    .line 105
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private show()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    if-eqz v0, :cond_10

    .line 136
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 138
    :cond_10
    return-void
.end method

.method private sso()Z
    .registers 5

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/androidquery/auth/FacebookHandle;->sso:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 179
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;

    iget v3, p0, Lcom/androidquery/auth/FacebookHandle;->requestId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/androidquery/auth/FacebookHandle;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_5
.end method

.method private startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "permissions"    # Ljava/lang/String;
    .param p4, "activityCode"    # I

    .prologue
    .line 454
    const/4 v0, 0x1

    .line 455
    .local v0, "didSucceed":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v3, "client_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    if-eqz p3, :cond_19

    .line 461
    const-string v3, "scope"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_19
    invoke-direct {p0, p1, v2}, Lcom/androidquery/auth/FacebookHandle;->validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 465
    const/4 v3, 0x0

    .line 474
    :goto_20
    return v3

    .line 469
    :cond_21
    :try_start_21
    invoke-virtual {p1, v2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_24} :catch_26

    :goto_24
    move v3, v0

    .line 474
    goto :goto_20

    .line 470
    :catch_26
    move-exception v1

    .line 471
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private storeToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "aq.fb.token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aq.fb.permission"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 232
    return-void
.end method

.method private validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 511
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 512
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_c

    .line 529
    :cond_b
    :goto_b
    return v6

    .line 516
    :cond_c
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 519
    .local v2, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_12
    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_15} :catch_2c

    move-result-object v1

    .line 524
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v8

    move v7, v6

    :goto_1a
    if-ge v7, v9, :cond_b

    aget-object v5, v8, v7

    .line 525
    .local v5, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 526
    const/4 v6, 0x1

    goto :goto_b

    .line 520
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :catch_2c
    move-exception v0

    .line 521
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_b

    .line 524
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "signature":Landroid/content/pm/Signature;
    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a
.end method

.method private webAuth()V
    .registers 6

    .prologue
    .line 185
    const-string v3, "web auth"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v3, "client_id"

    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v3, "type"

    const-string v4, "user_agent"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 191
    const-string v3, "scope"

    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_23
    const-string v3, "redirect_uri"

    const-string v4, "https://www.facebook.com/connect/login_success.html"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://graph.facebook.com/oauth/authorize?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/androidquery/auth/FacebookHandle;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;-><init>(Lcom/androidquery/auth/FacebookHandle;Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;)V

    .line 199
    .local v0, "client":Lcom/androidquery/auth/FacebookHandle$FbWebViewClient;
    new-instance v3, Lcom/androidquery/WebDialog;

    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-direct {v3, v4, v2, v0}, Lcom/androidquery/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    iput-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    .line 200
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    iget-object v4, p0, Lcom/androidquery/auth/FacebookHandle;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/androidquery/WebDialog;->setLoadingMessage(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v3, v0}, Lcom/androidquery/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 203
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->show()V

    .line 205
    iget-boolean v3, p0, Lcom/androidquery/auth/FacebookHandle;->first:Z

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    if-eqz v3, :cond_6b

    .line 207
    :cond_63
    const-string v3, "auth hide"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->hide()V

    .line 212
    :cond_6b
    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->dialog:Lcom/androidquery/WebDialog;

    invoke-virtual {v3}, Lcom/androidquery/WebDialog;->load()V

    .line 214
    const-string v3, "auth started"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 215
    return-void
.end method


# virtual methods
.method public ajaxProfile(Lcom/androidquery/callback/AjaxCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AjaxCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Lorg/json/JSONObject;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/androidquery/auth/FacebookHandle;->ajaxProfile(Lcom/androidquery/callback/AjaxCallback;J)V

    .line 496
    return-void
.end method

.method public ajaxProfile(Lcom/androidquery/callback/AjaxCallback;J)V
    .registers 12
    .param p2, "expire"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AjaxCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "cb":Lcom/androidquery/callback/AjaxCallback;, "Lcom/androidquery/callback/AjaxCallback<Lorg/json/JSONObject;>;"
    const-string v2, "https://graph.facebook.com/me"

    .line 502
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    .line 503
    .local v0, "aq":Lcom/androidquery/AQuery;
    invoke-virtual {v0, p0}, Lcom/androidquery/AQuery;->auth(Lcom/androidquery/auth/AccountHandle;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    const-class v3, Lorg/json/JSONObject;

    move-wide v4, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;JLcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 505
    return-void
.end method

.method protected auth()V
    .registers 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 174
    :cond_8
    :goto_8
    return-void

    .line 165
    :cond_9
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->sso()Z

    move-result v0

    .line 167
    .local v0, "ok":Z
    const-string v1, "authing"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    if-nez v0, :cond_8

    .line 171
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->webAuth()V

    goto :goto_8
.end method

.method protected authenticated(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 492
    return-void
.end method

.method public authenticated()Z
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z
    .registers 11
    .param p2, "status"    # Lcom/androidquery/callback/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const/16 v7, 0x193

    const/16 v6, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 376
    invoke-virtual {p2}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    .line 377
    .local v0, "code":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_f

    .line 395
    :cond_e
    :goto_e
    return v3

    .line 379
    :cond_f
    invoke-virtual {p2}, Lcom/androidquery/callback/AjaxStatus;->getError()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_24

    const-string v5, "OAuthException"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 381
    const-string v3, "fb token expired"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    move v3, v4

    .line 382
    goto :goto_e

    .line 385
    :cond_24
    invoke-virtual {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "url":Ljava/lang/String;
    if-ne v0, v6, :cond_42

    const-string v5, "/likes"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "/comments"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "/checkins"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 391
    :cond_42
    if-ne v0, v7, :cond_54

    const-string v5, "/feed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "method=delete"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 395
    :cond_54
    if-eq v0, v6, :cond_5c

    const/16 v5, 0x191

    if-eq v0, v5, :cond_5c

    if-ne v0, v7, :cond_e

    :cond_5c
    move v3, v4

    goto :goto_e
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/androidquery/auth/FacebookHandle;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 420
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_36

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    return-object p1

    .line 423
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isSSOAvailable()Z
    .registers 4

    .prologue
    .line 481
    sget-object v1, Lcom/androidquery/auth/FacebookHandle;->hasSSO:Ljava/lang/Boolean;

    if-nez v1, :cond_1c

    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 483
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-direct {p0, v1, v0}, Lcom/androidquery/auth/FacebookHandle;->validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/androidquery/auth/FacebookHandle;->hasSSO:Ljava/lang/Boolean;

    .line 487
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1c
    sget-object v1, Lcom/androidquery/auth/FacebookHandle;->hasSSO:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public message(Ljava/lang/String;)Lcom/androidquery/auth/FacebookHandle;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/androidquery/auth/FacebookHandle;->message:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 534
    const-string v2, "on result"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    const/4 v2, -0x1

    if-ne p2, v2, :cond_75

    .line 540
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "error":Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 542
    const-string v2, "error_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_1a
    if-eqz v1, :cond_49

    .line 548
    const-string v2, "error"

    invoke-static {v2, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    const-string v2, "service_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "AndroidAuthKillSwitchException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 550
    :cond_31
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->webAuth()V

    .line 580
    .end local v1    # "error":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 553
    .restart local v1    # "error":Ljava/lang/String;
    :cond_35
    const-string v2, "error_description"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "description":Ljava/lang/String;
    const-string v2, "fb error"

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    const-string v2, "fb error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, v0}, Lcom/androidquery/auth/FacebookHandle;->failure(Ljava/lang/String;)V

    goto :goto_34

    .line 561
    .end local v0    # "description":Ljava/lang/String;
    :cond_49
    const-string v2, "access_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    .line 563
    const-string v2, "onComplete"

    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    iget-object v2, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    if-eqz v2, :cond_71

    .line 565
    iget-object v2, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    iget-object v3, p0, Lcom/androidquery/auth/FacebookHandle;->permissions:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/androidquery/auth/FacebookHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/androidquery/auth/FacebookHandle;->first:Z

    .line 567
    iget-object v2, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/androidquery/auth/FacebookHandle;->authenticated(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/androidquery/auth/FacebookHandle;->success(Landroid/content/Context;)V

    goto :goto_34

    .line 570
    :cond_71
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->failure()V

    goto :goto_34

    .line 576
    .end local v1    # "error":Ljava/lang/String;
    :cond_75
    if-nez p2, :cond_34

    .line 577
    invoke-direct {p0}, Lcom/androidquery/auth/FacebookHandle;->failure()V

    goto :goto_34
.end method

.method public reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const-string v0, "reauth requested"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    .line 405
    new-instance v0, Lcom/androidquery/auth/FacebookHandle$1;

    invoke-direct {v0, p0, p1}, Lcom/androidquery/auth/FacebookHandle$1;-><init>(Lcom/androidquery/auth/FacebookHandle;Lcom/androidquery/callback/AbstractAjaxCallback;)V

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public setLoadingMessage(I)Lcom/androidquery/auth/FacebookHandle;
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->message:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public sso(I)Lcom/androidquery/auth/FacebookHandle;
    .registers 3
    .param p1, "requestId"    # I

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/auth/FacebookHandle;->sso:Z

    .line 89
    iput p1, p0, Lcom/androidquery/auth/FacebookHandle;->requestId:I

    .line 90
    return-object p0
.end method

.method public unauth()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 445
    iput-object v1, p0, Lcom/androidquery/auth/FacebookHandle;->token:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle;->act:Landroid/app/Activity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 448
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 449
    invoke-direct {p0, v1, v1}, Lcom/androidquery/auth/FacebookHandle;->storeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void
.end method
