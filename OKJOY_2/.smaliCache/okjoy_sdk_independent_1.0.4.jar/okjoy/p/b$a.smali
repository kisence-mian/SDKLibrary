.class public Lokjoy/p/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokjoy/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lokjoy/p/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokjoy/p/b;

    invoke-direct {v0}, Lokjoy/p/b;-><init>()V

    sput-object v0, Lokjoy/p/b$a;->a:Lokjoy/p/b;

    return-void
.end method
