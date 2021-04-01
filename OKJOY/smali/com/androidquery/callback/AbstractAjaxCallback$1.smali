.class Lcom/androidquery/callback/AbstractAjaxCallback$1;
.super Ljava/lang/Object;
.source "AbstractAjaxCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

.field private final synthetic val$p:Ljava/lang/Object;

.field private final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/lang/Object;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$p:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$show:Z

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$p:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

    # getter for: Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->access$0(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->val$show:Z

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 696
    return-void
.end method
