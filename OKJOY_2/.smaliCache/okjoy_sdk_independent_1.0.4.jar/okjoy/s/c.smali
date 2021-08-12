.class public final Lokjoy/s/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokjoy/s/c$a;

    invoke-direct {v0}, Lokjoy/s/c$a;-><init>()V

    sput-object v0, Lokjoy/s/c;->a:Ljava/util/Map;

    return-void
.end method
