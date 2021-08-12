.class final Lcom/anythink/basead/ui/web/WebLandPageActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/web/WebLandPageActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/web/WebLandPageActivity;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 264
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->finish()V

    .line 265
    return-void
.end method
