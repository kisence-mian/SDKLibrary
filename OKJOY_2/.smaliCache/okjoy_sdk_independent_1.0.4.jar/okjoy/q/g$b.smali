.class public Lokjoy/q/g$b;
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

    iput-object p1, p0, Lokjoy/q/g$b;->a:Lokjoy/q/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lokjoy/q/g$b;->a:Lokjoy/q/g;

    iget-object p1, p1, Lokjoy/q/g;->b:Landroid/app/Activity;

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/content/Context;)V

    return-void
.end method
