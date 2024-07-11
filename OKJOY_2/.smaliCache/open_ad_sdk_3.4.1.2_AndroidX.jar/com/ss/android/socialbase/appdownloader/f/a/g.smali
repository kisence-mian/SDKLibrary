.class public interface abstract Lcom/ss/android/socialbase/appdownloader/f/a/g;
.super Ljava/lang/Object;
.source "XmlPullParser.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 15
    const-string v0, "START_DOCUMENT"

    const-string v1, "END_DOCUMENT"

    const-string v2, "START_TAG"

    const-string v3, "END_TAG"

    const-string v4, "TEXT"

    const-string v5, "CDSECT"

    const-string v6, "ENTITY_REF"

    const-string v7, "IGNORABLE_WHITESPACE"

    const-string v8, "PROCESSING_INSTRUCTION"

    const-string v9, "COMMENT"

    const-string v10, "DOCDECL"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/a/g;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract f()I
.end method
