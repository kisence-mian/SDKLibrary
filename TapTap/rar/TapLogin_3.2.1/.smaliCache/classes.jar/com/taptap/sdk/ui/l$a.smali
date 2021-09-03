.class Lcom/taptap/sdk/ui/l$a;
.super Ljava/lang/Object;
.source "WebBlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/ui/l;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/l;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/l$a;->a:Lcom/taptap/sdk/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/taptap/sdk/ui/l$a;->a:Lcom/taptap/sdk/ui/l;

    invoke-virtual {p1}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
