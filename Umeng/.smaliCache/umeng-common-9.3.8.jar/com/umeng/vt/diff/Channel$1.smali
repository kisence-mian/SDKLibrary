.class Lcom/umeng/vt/diff/Channel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/vt/diff/Channel;->registerListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/vt/diff/Channel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/vt/diff/Channel;Landroid/content/Context;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/umeng/vt/diff/Channel$1;->this$0:Lcom/umeng/vt/diff/Channel;

    iput-object p2, p0, Lcom/umeng/vt/diff/Channel$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 64
    const-string p2, "utm-visual"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 65
    iget-object p1, p0, Lcom/umeng/vt/diff/Channel$1;->this$0:Lcom/umeng/vt/diff/Channel;

    iget-object p2, p0, Lcom/umeng/vt/diff/Channel$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/vt/diff/Channel;->loadConfig(Landroid/content/Context;)V

    .line 67
    :cond_f
    return-void
.end method