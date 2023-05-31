.class public abstract Lcom/google/gson/internal/reflect/ReflectionAccessor;
.super Ljava/lang/Object;
.source "ReflectionAccessor.java"


# static fields
.field private static final instance:Lcom/google/gson/internal/reflect/ReflectionAccessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Lcom/google/gson/util/VersionUtils;->getMajorJavaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_10

    new-instance v0, Lcom/google/gson/internal/reflect/PreJava9ReflectionAccessor;

    invoke-direct {v0}, Lcom/google/gson/internal/reflect/PreJava9ReflectionAccessor;-><init>()V

    :goto_d
    sput-object v0, Lcom/google/gson/internal/reflect/ReflectionAccessor;->instance:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    return-void

    :cond_10
    new-instance v0, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;

    invoke-direct {v0}, Lcom/google/gson/internal/reflect/UnsafeReflectionAccessor;-><init>()V

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/gson/internal/reflect/ReflectionAccessor;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionAccessor;->instance:Lcom/google/gson/internal/reflect/ReflectionAccessor;

    return-object v0
.end method


# virtual methods
.method public abstract makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
.end method
