.class public Lokjoy/q/c$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokjoy/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lokjoy/q/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokjoy/q/c;

    .line 1
    invoke-direct {v0}, Lokjoy/q/c;-><init>()V

    .line 2
    sput-object v0, Lokjoy/q/c$d;->a:Lokjoy/q/c;

    return-void
.end method
