.class final Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V
    .registers 2

    .line 1037
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserModel;Landroid/support/v7/internal/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/internal/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/ActivityChooserModel$1;

    .line 1037
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .line 1037
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 19
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1042
    move-object/from16 v1, p0

    const-string v0, "historical-record"

    const-string v2, "historical-records"

    const-string v3, "Error writing historical recrod file: "

    const/4 v4, 0x0

    aget-object v5, p1, v4

    check-cast v5, Ljava/util/List;

    .line 1043
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v6, 0x1

    aget-object v7, p1, v6

    check-cast v7, Ljava/lang/String;

    .line 1045
    .local v7, "hostoryFileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1048
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_14
    iget-object v10, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$200(Landroid/support/v7/internal/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1e} :catch_129

    move-object v8, v10

    .line 1052
    nop

    .line 1054
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 1057
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_24
    invoke-interface {v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1058
    const-string v11, "UTF-8"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1059
    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .line 1062
    .local v11, "recordCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_38
    if-ge v12, v11, :cond_70

    .line 1063
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;

    .line 1064
    .local v13, "record":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    const-string v14, "activity"

    iget-object v15, v13, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v9, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    const-string v14, "time"
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_50} :catch_ea
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_50} :catch_bd
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_50} :catch_90
    .catchall {:try_start_24 .. :try_end_50} :catchall_8a

    move-object/from16 v16, v5

    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v16, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :try_start_52
    iget-wide v4, v13, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v9, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1068
    const-string v4, "weight"

    iget v5, v13, Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v9, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1062
    nop

    .end local v13    # "record":Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_38

    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_70
    move-object/from16 v16, v5

    .line 1075
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v12    # "i":I
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_78} :catch_88
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_78} :catch_86
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_78} :catch_84
    .catchall {:try_start_52 .. :try_end_78} :catchall_11a

    .line 1088
    .end local v11    # "recordCount":I
    iget-object v0, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v0, v6}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1089
    if-eqz v8, :cond_119

    .line 1091
    :try_start_7f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_117

    goto/16 :goto_116

    .line 1085
    :catch_84
    move-exception v0

    goto :goto_93

    .line 1083
    :catch_86
    move-exception v0

    goto :goto_c0

    .line 1081
    :catch_88
    move-exception v0

    goto :goto_ed

    .line 1088
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_8a
    move-exception v0

    move-object/from16 v16, v5

    move-object v2, v0

    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    goto/16 :goto_11c

    .line 1085
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_90
    move-exception v0

    move-object/from16 v16, v5

    .line 1086
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_93
    :try_start_93
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_93 .. :try_end_b1} :catchall_11a

    .line 1088
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    iget-object v0, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v0, v6}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1089
    if-eqz v8, :cond_119

    .line 1091
    :try_start_b9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_117

    goto :goto_116

    .line 1083
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_bd
    move-exception v0

    move-object/from16 v16, v5

    .line 1084
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "ise":Ljava/lang/IllegalStateException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_c0
    :try_start_c0
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catchall {:try_start_c0 .. :try_end_de} :catchall_11a

    .line 1088
    nop

    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    iget-object v0, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v0, v6}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1089
    if-eqz v8, :cond_119

    .line 1091
    :try_start_e6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_117

    goto :goto_116

    .line 1081
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_ea
    move-exception v0

    move-object/from16 v16, v5

    .line 1082
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_ed
    :try_start_ed
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$400(Landroid/support/v7/internal/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_ed .. :try_end_10b} :catchall_11a

    .line 1088
    nop

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    iget-object v0, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v0, v6}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1089
    if-eqz v8, :cond_119

    .line 1091
    :try_start_113
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    .line 1094
    :goto_116
    goto :goto_119

    .line 1092
    :catch_117
    move-exception v0

    goto :goto_116

    .line 1097
    :cond_119
    :goto_119
    return-object v9

    .line 1088
    :catchall_11a
    move-exception v0

    move-object v2, v0

    :goto_11c
    iget-object v0, v1, Landroid/support/v7/internal/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/internal/widget/ActivityChooserModel;

    # setter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
    invoke-static {v0, v6}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$502(Landroid/support/v7/internal/widget/ActivityChooserModel;Z)Z

    .line 1089
    if-eqz v8, :cond_128

    .line 1091
    :try_start_123
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_127

    .line 1094
    goto :goto_128

    .line 1092
    :catch_127
    move-exception v0

    .line 1094
    :cond_128
    :goto_128
    throw v2

    .line 1049
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_129
    move-exception v0

    move-object/from16 v16, v5

    .line 1050
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/internal/widget/ActivityChooserModel$HistoricalRecord;>;"
    # getter for: Landroid/support/v7/internal/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/support/v7/internal/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1051
    return-object v9
.end method
