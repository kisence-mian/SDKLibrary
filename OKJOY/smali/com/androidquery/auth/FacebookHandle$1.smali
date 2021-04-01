.class Lcom/androidquery/auth/FacebookHandle$1;
.super Ljava/lang/Object;
.source "FacebookHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/auth/FacebookHandle;->reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/FacebookHandle;

.field private final synthetic val$cb:Lcom/androidquery/callback/AbstractAjaxCallback;


# direct methods
.method constructor <init>(Lcom/androidquery/auth/FacebookHandle;Lcom/androidquery/callback/AbstractAjaxCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidquery/auth/FacebookHandle$1;->this$0:Lcom/androidquery/auth/FacebookHandle;

    iput-object p2, p0, Lcom/androidquery/auth/FacebookHandle$1;->val$cb:Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/androidquery/auth/FacebookHandle$1;->this$0:Lcom/androidquery/auth/FacebookHandle;

    iget-object v1, p0, Lcom/androidquery/auth/FacebookHandle$1;->val$cb:Lcom/androidquery/callback/AbstractAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/FacebookHandle;->auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V

    .line 410
    return-void
.end method
