.class Lcom/androidquery/auth/TwitterHandle$Task;
.super Landroid/os/AsyncTask;
.source "TwitterHandle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/TwitterHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private cb:Lcom/androidquery/callback/AbstractAjaxCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/androidquery/auth/TwitterHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/TwitterHandle;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$Task;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/androidquery/auth/TwitterHandle$Task;-><init>(Lcom/androidquery/auth/TwitterHandle;)V

    return-void
.end method

.method static synthetic access$3(Lcom/androidquery/auth/TwitterHandle$Task;Lcom/androidquery/callback/AbstractAjaxCallback;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle$Task;->cb:Lcom/androidquery/callback/AbstractAjaxCallback;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/TwitterHandle$Task;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "url":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # getter for: Lcom/androidquery/auth/TwitterHandle;->provider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    invoke-static {v2}, Lcom/androidquery/auth/TwitterHandle;->access$0(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # getter for: Lcom/androidquery/auth/TwitterHandle;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v3}, Lcom/androidquery/auth/TwitterHandle;->access$1(Lcom/androidquery/auth/TwitterHandle;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v3

    const-string v4, "twitter://callback"

    invoke-virtual {v2, v3, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_15

    move-result-object v1

    move-object v2, v1

    .line 110
    :goto_14
    return-object v2

    .line 105
    :catch_15
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 107
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->failure()V
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    .line 136
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/TwitterHandle$Task;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_32

    .line 119
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    new-instance v1, Lcom/androidquery/WebDialog;

    iget-object v2, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # getter for: Lcom/androidquery/auth/TwitterHandle;->act:Landroid/app/Activity;
    invoke-static {v2}, Lcom/androidquery/auth/TwitterHandle;->access$2(Lcom/androidquery/auth/TwitterHandle;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;

    iget-object v4, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;-><init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;)V

    invoke-direct {v1, v2, p1, v3}, Lcom/androidquery/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V

    invoke-static {v0, v1}, Lcom/androidquery/auth/TwitterHandle;->access$3(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/WebDialog;)V

    .line 120
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # getter for: Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$4(Lcom/androidquery/auth/TwitterHandle;)Lcom/androidquery/WebDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidquery/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 121
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->show()V
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$5(Lcom/androidquery/auth/TwitterHandle;)V

    .line 124
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # getter for: Lcom/androidquery/auth/TwitterHandle;->dialog:Lcom/androidquery/WebDialog;
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$4(Lcom/androidquery/auth/TwitterHandle;)Lcom/androidquery/WebDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/WebDialog;->load()V

    .line 130
    :goto_31
    return-void

    .line 127
    :cond_32
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    # invokes: Lcom/androidquery/auth/TwitterHandle;->failure()V
    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    goto :goto_31
.end method

.method public run()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$Task;->this$0:Lcom/androidquery/auth/TwitterHandle;

    iget-object v1, p0, Lcom/androidquery/auth/TwitterHandle$Task;->cb:Lcom/androidquery/callback/AbstractAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/TwitterHandle;->auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V

    .line 142
    return-void
.end method
