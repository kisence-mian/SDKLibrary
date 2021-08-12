.class public Lokjoy/a/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokjoy/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lokjoy/a/j;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokjoy/a/j;

    .line 1
    invoke-direct {v0}, Lokjoy/a/j;-><init>()V

    .line 2
    sput-object v0, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    return-void
.end method
