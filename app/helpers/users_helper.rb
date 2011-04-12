module UsersHelper
  def captain?(cuser, label = false)
    if label
      if cuser.role_id == 2
        "#{cuser.name} (Captain)"
      else
        "#{cuser.name}"
      end
    else
      'captain' if cuser.role_id == 2
    end
  end
  
  def mass_email(community)
    community_emails = []
    for com in community
      community_emails << "#{com.email}"
    end
    
    # find first occurance of "&" an change to a "?"
    community_emails = 'mailto:' + community_emails.join("&cc=").sub('&', '?')
  end
end
