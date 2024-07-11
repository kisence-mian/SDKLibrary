.class public interface abstract annotation Lcom/ss/android/ttmd5/TTMd5$CHECK_MD5_STATUS;
.super Ljava/lang/Object;
.source "TTMd5.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttmd5/TTMd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CHECK_MD5_STATUS"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FILE_NOT_EXIST:I = 0x5

.field public static final GET_FILE_MD5_ERROR:I = 0x6

.field public static final MD5_EMPTY:I = 0x2

.field public static final MD5_MATCH:I = 0x0

.field public static final MD5_NOT_MATCH:I = 0x1

.field public static final TTMD5_TAG_PARSER_ERROR:I = 0x4

.field public static final TTMD5_VERSION_NOT_SUPPORT:I = 0x3

.field public static final UNKNOWN_ERROR:I = 0x63
