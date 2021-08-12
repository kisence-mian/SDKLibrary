.class public Lokjoy/t/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/t/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/t/c;


# direct methods
.method public constructor <init>(Lokjoy/t/c;)V
    .registers 2

    iput-object p1, p0, Lokjoy/t/c$a;->a:Lokjoy/t/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lokjoy/t/c$a;->a:Lokjoy/t/c;

    .line 1
    iget-boolean v0, p1, Lokjoy/t/c;->f:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lokjoy/t/c;->a(Lokjoy/t/c;Z)Z

    iget-object p1, p0, Lokjoy/t/c$a;->a:Lokjoy/t/c;

    .line 3
    iget-object p1, p1, Lokjoy/t/c;->a:Landroid/content/Context;

    .line 4
    const-string v0, "joy_btn_agree_normal"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lokjoy/t/c$a;->a:Lokjoy/t/c;

    .line 5
    iget-boolean v1, v0, Lokjoy/t/c;->f:Z

    if-eqz v1, :cond_21

    .line 6
    iget-object p1, v0, Lokjoy/t/c;->a:Landroid/content/Context;

    .line 7
    const-string v0, "joy_btn_agree_selected"

    invoke-static {p1, v0}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    :cond_21
    iget-object v0, p0, Lokjoy/t/c$a;->a:Lokjoy/t/c;

    .line 8
    iget-object v0, v0, Lokjoy/t/c;->e:Landroid/widget/Button;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
