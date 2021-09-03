.class public final Lcom/tds/common/reactor/util/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final ANDROID_API_VERSION:I

.field public static final ANDROID_API_VERSION_IS_NOT_ANDROID:I

.field private static final IS_ANDROID:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    invoke-static {}, Lcom/tds/common/reactor/util/PlatformDependent;->resolveAndroidApiVersion()I

    move-result v0

    sput v0, Lcom/tds/common/reactor/util/PlatformDependent;->ANDROID_API_VERSION:I

    .line 32
    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/tds/common/reactor/util/PlatformDependent;->IS_ANDROID:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndroidApiVersion()I
    .registers 1

    .line 54
    sget v0, Lcom/tds/common/reactor/util/PlatformDependent;->ANDROID_API_VERSION:I

    return v0
.end method

.method public static isAndroid()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/tds/common/reactor/util/PlatformDependent;->IS_ANDROID:Z

    return v0
.end method

.method private static resolveAndroidApiVersion()I
    .registers 2

    .line 66
    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    .line 67
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SDK_INT"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    .line 70
    :catch_18
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
