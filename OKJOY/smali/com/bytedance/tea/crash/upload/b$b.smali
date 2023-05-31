.class public final enum Lcom/bytedance/tea/crash/upload/b$b;
.super Ljava/lang/Enum;
.source "CrashUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/upload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/tea/crash/upload/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum b:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum c:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum d:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum e:Lcom/bytedance/tea/crash/upload/b$b;

.field public static final enum f:Lcom/bytedance/tea/crash/upload/b$b;

.field private static final synthetic h:[Lcom/bytedance/tea/crash/upload/b$b;


# instance fields
.field final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 474
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    .line 475
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v5, v5}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    .line 476
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "MOBILE_2G"

    invoke-direct {v0, v1, v6, v6}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->c:Lcom/bytedance/tea/crash/upload/b$b;

    .line 477
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "MOBILE_3G"

    invoke-direct {v0, v1, v7, v7}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    .line 478
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v8, v8}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    .line 479
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    .line 473
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/tea/crash/upload/b$b;

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->c:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->h:[Lcom/bytedance/tea/crash/upload/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 484
    iput p3, p0, Lcom/bytedance/tea/crash/upload/b$b;->g:I

    .line 485
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/b$b;
    .registers 2

    .prologue
    .line 473
    const-class v0, Lcom/bytedance/tea/crash/upload/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/upload/b$b;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/tea/crash/upload/b$b;
    .registers 1

    .prologue
    .line 473
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->h:[Lcom/bytedance/tea/crash/upload/b$b;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/upload/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/upload/b$b;

    return-object v0
.end method
