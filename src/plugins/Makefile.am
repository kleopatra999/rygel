if BUILD_TRACKER_PLUGIN
TRACKER_PLUGIN = tracker
endif

if BUILD_MEDIA_EXPORT_PLUGIN
MEDIA_EXPORT_PLUGIN = media-export
endif

if BUILD_LMS_PLUGIN
LMS_PLUGIN = lms
endif

if BUILD_EXTERNAL_PLUGIN
EXTERNAL_PLUGIN = external
endif

if BUILD_MPRIS_PLUGIN
MPRIS_PLUGIN = mpris
endif

if BUILD_GST_LAUNCH_PLUGIN
GST_LAUNCH_PLUGIN = gst-launch
endif

if BUILD_PLAYBIN_PLUGIN
PLAYBIN = playbin
endif

if BUILD_RUIH_PLUGIN
RUIH = ruih
endif

SUBDIRS = $(TRACKER_PLUGIN) \
	  $(MEDIA_EXPORT_PLUGIN) \
	  $(LMS_PLUGIN) \
	  $(EXTERNAL_PLUGIN) \
	  $(MPRIS_PLUGIN) \
	  $(GST_LAUNCH_PLUGIN) \
          $(PLAYBIN) \
          $(RUIH)

MAINTAINERCLEANFILES = Makefile.in

vala-clean:
	rm -f `find . -name "*.stamp"`
