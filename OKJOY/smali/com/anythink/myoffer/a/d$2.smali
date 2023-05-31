.class final Lcom/anythink/myoffer/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/d;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/anythink/myoffer/a/d$2;->a:Lcom/anythink/myoffer/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$2;->a:Lcom/anythink/myoffer/a/d;

    iget-object v0, v0, Lcom/anythink/myoffer/a/d;->i:Landroid/content/Context;

    const-string v1, "Detect that the App Market is not installed and cannot be opened through the App Marke"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    return-void
.end method
