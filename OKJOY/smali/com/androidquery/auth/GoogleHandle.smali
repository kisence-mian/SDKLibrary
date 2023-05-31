.class public Lcom/androidquery/auth/GoogleHandle;
.super Lcom/androidquery/auth/AccountHandle;
.source "GoogleHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/auth/GoogleHandle$Task;
    }
.end annotation


# instance fields
.field private acc:Landroid/accounts/Account;

.field private accs:[Landroid/accounts/Account;

.field private act:Landroid/app/Activity;

.field private am:Landroid/accounts/AccountManager;

.field private email:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/androidquery/auth/AccountHandle;-><init>()V

    .line 59
    const-string v0, "aq.account"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 63
    :cond_f
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/androidquery/auth/GoogleHandle;->email:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/AccountManager;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androidquery/auth/GoogleHandle;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androidquery/auth/GoogleHandle;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    return-void
.end method

.method private accountDialog()V
    .registers 8

    .prologue
    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    .line 113
    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    array-length v4, v5

    .line 115
    .local v4, "size":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 116
    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {p0, v5}, Lcom/androidquery/auth/GoogleHandle;->auth(Landroid/accounts/Account;)V

    .line 129
    :goto_1f
    return-void

    .line 119
    :cond_20
    new-array v3, v4, [Ljava/lang/String;

    .line 120
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-lt v2, v4, :cond_3a

    .line 123
    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 127
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/androidquery/AQuery;

    iget-object v6, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v1}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1f

    .line 121
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_3a
    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_23
.end method

.method private auth(Landroid/accounts/Account;)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    .line 153
    new-instance v0, Lcom/androidquery/auth/GoogleHandle$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androidquery/auth/GoogleHandle$Task;-><init>(Lcom/androidquery/auth/GoogleHandle;Lcom/androidquery/auth/GoogleHandle$Task;)V

    .line 154
    .local v0, "task":Lcom/androidquery/auth/GoogleHandle$Task;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/GoogleHandle$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public static getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aq.account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method


# virtual methods
.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V
    .registers 6
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleLogin auth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method protected auth()V
    .registers 6

    .prologue
    .line 73
    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->email:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 74
    invoke-direct {p0}, Lcom/androidquery/auth/GoogleHandle;->accountDialog()V

    .line 85
    :cond_7
    :goto_7
    return-void

    .line 76
    :cond_8
    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 77
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 78
    aget-object v0, v1, v2

    .line 79
    .local v0, "account":Landroid/accounts/Account;
    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->email:Ljava/lang/String;

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 80
    invoke-direct {p0, v0}, Lcom/androidquery/auth/GoogleHandle;->auth(Landroid/accounts/Account;)V

    goto :goto_7

    .line 77
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public authenticated()Z
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z
    .registers 5
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
    .line 204
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    invoke-virtual {p2}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    .line 205
    .local v0, "code":I
    const/16 v1, 0x191

    if-eq v0, v1, :cond_e

    const/16 v1, 0x193

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    const/16 v1, -0x66

    const-string v2, "cancel"

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/auth/GoogleHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    .line 200
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    aget-object v0, v1, p2

    .line 135
    .local v0, "acc":Landroid/accounts/Account;
    const-string v1, "acc"

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/androidquery/auth/GoogleHandle;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/androidquery/auth/GoogleHandle;->auth(Landroid/accounts/Account;)V

    .line 139
    return-void
.end method

.method public reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cb":Lcom/androidquery/callback/AbstractAjaxCallback;, "Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    const/4 v1, 0x1

    .line 90
    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_c
    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 94
    const-string v2, "re token"

    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_25

    .line 100
    :goto_20
    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    if-eqz v2, :cond_2d

    :goto_24
    return v1

    .line 95
    :catch_25
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    goto :goto_20

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    const/4 v1, 0x0

    goto :goto_24
.end method
