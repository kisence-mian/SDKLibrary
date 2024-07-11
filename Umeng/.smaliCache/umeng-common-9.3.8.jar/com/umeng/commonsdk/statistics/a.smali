.class public Lcom/umeng/commonsdk/statistics/a;
.super Ljava/lang/Object;
.source "BusinessWrapperConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "native"

    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
