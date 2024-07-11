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
        "Ljava/lang/Enum<",
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
    .registers 13

    .line 474
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$b;->a:Lcom/bytedance/tea/crash/upload/b$b;

    .line 475
    new-instance v1, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/tea/crash/upload/b$b;->b:Lcom/bytedance/tea/crash/upload/b$b;

    .line 476
    new-instance v3, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v5, "MOBILE_2G"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/tea/crash/upload/b$b;->c:Lcom/bytedance/tea/crash/upload/b$b;

    .line 477
    new-instance v5, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v7, "MOBILE_3G"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/tea/crash/upload/b$b;->d:Lcom/bytedance/tea/crash/upload/b$b;

    .line 478
    new-instance v7, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v9, "WIFI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/tea/crash/upload/b$b;->e:Lcom/bytedance/tea/crash/upload/b$b;

    .line 479
    new-instance v9, Lcom/bytedance/tea/crash/upload/b$b;

    const-string v11, "MOBILE_4G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/bytedance/tea/crash/upload/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/tea/crash/upload/b$b;->f:Lcom/bytedance/tea/crash/upload/b$b;

    .line 473
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bytedance/tea/crash/upload/b$b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/bytedance/tea/crash/upload/b$b;->h:[Lcom/bytedance/tea/crash/upload/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 483
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 484
    iput p3, p0, Lcom/bytedance/tea/crash/upload/b$b;->g:I

    .line 485
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/b$b;
    .registers 2

    .line 473
    const-class v0, Lcom/bytedance/tea/crash/upload/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/tea/crash/upload/b$b;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/tea/crash/upload/b$b;
    .registers 1

    .line 473
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$b;->h:[Lcom/bytedance/tea/crash/upload/b$b;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/upload/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/upload/b$b;

    return-object v0
.end method
