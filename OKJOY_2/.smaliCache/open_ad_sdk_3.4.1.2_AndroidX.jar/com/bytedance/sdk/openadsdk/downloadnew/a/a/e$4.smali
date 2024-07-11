.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/c/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;->a:Lcom/ss/android/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/c/c$b;->c(Landroid/content/DialogInterface;)V

    .line 152
    :cond_d
    return-void
.end method
