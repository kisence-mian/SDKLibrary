.class public Lokjoy/q/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/q/g;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/q/g;


# direct methods
.method public constructor <init>(Lokjoy/q/g;)V
    .registers 2

    iput-object p1, p0, Lokjoy/q/g$a;->a:Lokjoy/q/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lokjoy/q/g$a;->a:Lokjoy/q/g;

    iget-object p2, p1, Lokjoy/q/g;->b:Landroid/app/Activity;

    iget-object v0, p1, Lokjoy/q/g;->c:[Ljava/lang/String;

    iget-object p1, p1, Lokjoy/q/g;->a:Lokjoy/q/i;

    invoke-static {p2, v0, p1}, Lokjoy/a/g;->a(Landroid/app/Activity;[Ljava/lang/String;Lokjoy/q/i;)V

    return-void
.end method
