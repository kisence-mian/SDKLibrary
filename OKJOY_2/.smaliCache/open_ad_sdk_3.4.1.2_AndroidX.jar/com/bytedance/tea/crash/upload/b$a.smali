.class public final enum Lcom/bytedance/tea/crash/upload/b$a;
.super Ljava/lang/Enum;
.source "CrashUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/upload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/tea/crash/upload/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/tea/crash/upload/b$a;

.field public static final enum b:Lcom/bytedance/tea/crash/upload/b$a;

.field public static final enum c:Lcom/bytedance/tea/crash/upload/b$a;

.field private static final synthetic e:[Lcom/bytedance/tea/crash/upload/b$a;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 462
    new-instance v0, Lcom/bytedance/tea/crash/upload/b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/tea/crash/upload/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/b$a;->a:Lcom/bytedance/tea/crash/upload/b$a;

    .line 463
    new-instance v1, Lcom/bytedance/tea/crash/upload/b$a;

    const-string v3, "GZIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/tea/crash/upload/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/tea/crash/upload/b$a;->b:Lcom/bytedance/tea/crash/upload/b$a;

    .line 464
    new-instance v3, Lcom/bytedance/tea/crash/upload/b$a;

    const-string v5, "DEFLATER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/tea/crash/upload/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/tea/crash/upload/b$a;->c:Lcom/bytedance/tea/crash/upload/b$a;

    .line 461
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/tea/crash/upload/b$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/tea/crash/upload/b$a;->e:[Lcom/bytedance/tea/crash/upload/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 469
    iput p3, p0, Lcom/bytedance/tea/crash/upload/b$a;->d:I

    .line 470
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/b$a;
    .registers 2

    .line 461
    const-class v0, Lcom/bytedance/tea/crash/upload/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/tea/crash/upload/b$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/tea/crash/upload/b$a;
    .registers 1

    .line 461
    sget-object v0, Lcom/bytedance/tea/crash/upload/b$a;->e:[Lcom/bytedance/tea/crash/upload/b$a;

    invoke-virtual {v0}, [Lcom/bytedance/tea/crash/upload/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/tea/crash/upload/b$a;

    return-object v0
.end method
