.class public Lmobi/oneway/export/d/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lmobi/oneway/export/d/d;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lmobi/oneway/export/d/d;->a:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lmobi/oneway/export/d/d;->a:Z

    return v0
.end method
